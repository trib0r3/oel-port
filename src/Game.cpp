#include "Game.h"

Game::Game(int current_year) {
    DEFAULT_CLEAR_COLOR = c64::BLACK;

    current_year_ = current_year;
    players_count_ = 0;
    players_ = nullptr;
}

Game::~Game() {
    if(players_ != nullptr)
        delete[] players_;
}

int Game::Run() {
    /* Init section (original) */
    if(init_values_()) {
        return 1;
    }

    rectangle_border_.setOutlineColor(c64::BLACK);
    rectangle_screen_.setFillColor(c64::RED);
    color_clear_ = DEFAULT_CLEAR_COLOR;

    if (prepare_consts_to_load_()) {
        return 2;
    }

    if(load_graphics_module_(640, 480) /* FIXME use other values */) {
        return 3;
    }

    if(show_menu_()) {
        return 4;
    }

    /* Game loop */
    // TODO game loop

    return 0;
}

int Game::load_graphics_module_(unsigned int scrn_width, unsigned int scrn_height) {
    if(!font_commodore_.loadFromFile("../resources/PetMe.ttf")) {
        return 1;
    }

    scrn_min_  = sf::Vector2f(0.0f, 0.0f);
    scrn_max_ = sf::Vector2f(float(scrn_width), float(scrn_height));
    scrn_center_ = sf::Vector2f((scrn_max_.x - scrn_min_.x) / 2.0f, (scrn_max_.y - scrn_min_.y) / 2.0f);

    rectangle_screen_.setSize(sf::Vector2f(scrn_width, scrn_height));
    rectangle_screen_.setOrigin(scrn_center_);
    rectangle_screen_.setPosition(scrn_center_);

    rectangle_border_.setSize(sf::Vector2f(scrn_width, scrn_height));
    rectangle_border_.setOrigin(scrn_center_);
    rectangle_border_.setPosition(scrn_center_);
    rectangle_border_.setOutlineThickness(-48.0f); // FIXME find proper value
    rectangle_border_.setFillColor(sf::Color::Transparent);

    window_.create(
            sf::VideoMode(scrn_width, scrn_height),
            "Oel - Port by shd",
            sf::Style::Close | sf::Style::Titlebar
    );
    view_.setSize(scrn_width, scrn_height);
    view_.setCenter(scrn_center_);
    window_.setView(view_);
    window_.setFramerateLimit(120);
    return 0;
}

int Game::init_values_() {
    // TODO init values

    return 0;
}

int Game::prepare_consts_to_load_() {
    // TODO prepare consts to load
    return 0;
}

int Game::show_menu_() {
    bool exit = false;
    const int SIZE_MEDIUM = 19;
    const int SIZE_BIG = 170;

    /* Camera have following states:
     * 0 = wait until time elapse
     * 1 = move to target
     * 2 = replace objects, back to state 1
     */
    int camera_state = 0;

    sf::Clock clock;
    sf::Vector2f target;
    uint64_t wait_time;

    /* There are following states inside menu (each is nicely slided from down to up):
     * 0 = init, show big title: "OEL..." (wait 4 seconds)
     * 1 = quote, show subtitle: "Big game..." (wait 2s)
     * 2 = player init, get number of players TODO add middle state for get amount of players
     * 3 = "Current year"
     * 4 = "<year>"
     * 5 = "Game ends in..." (1sec)
     * 6 = instant "Enter player name..." TODO
     */
    int menu_state = 0;
    // prepare for 1st & 2nd stage
    sf::Vector2f lastPos = scrn_center_;

    sf::Text *tCurrent = new sf::Text("OEL", font_commodore_, SIZE_BIG);
    pos_rel_to_point(lastPos, tCurrent);
    lastPos += sf::Vector2f(0.0f, scrn_max_.y);

    sf::Text *tNext = new sf::Text("The big game for big money", font_commodore_, SIZE_MEDIUM);
    pos_rel_to_point(lastPos, tNext);

    target = sf::Vector2f(0, scrn_center_.y + scrn_max_.y);
    wait_time = 4; // seconds
    clock.restart();

    sf::Clock dt;
    while(!exit)
    {
        switch (camera_state) {
            case 0:
                if (clock.getElapsedTime().asSeconds() >= wait_time) {
                    camera_state = 1;
                }
                break;

            case 1:
                view_move_(sf::Vector2f(0, 25), 0.085f);
                if (view_.getCenter().y >= target.y) {
                    camera_state = 2;
                }
                break;

            case 2: {
                std::swap(tNext, tCurrent);
                menu_state++;
                camera_state = 0;

                switch (menu_state) {
                    case 1:
                        wait_time = 2;
                        tNext->setString("Amount of players (2-6):");
                        tNext->setCharacterSize(SIZE_MEDIUM);
                        break;
                    case 2:
                        tNext->setString("Current year:");
                        break;
                    case 3:
                        tNext->setString(std::to_string(current_year_));
                        tNext->setCharacterSize(72);
                        break;
                    case 4:
                        tNext->setString("The game ends in 2017");
                        tNext->setCharacterSize(SIZE_MEDIUM);
                        break;
                    default:
                        camera_state = 0xbad;
                        break;
                }

                if(camera_state != 0xbad) {
                    lastPos += sf::Vector2f(0.0f, scrn_max_.y);
                    pos_rel_to_point(lastPos, tNext);

                    clock.restart();
                    target.y += scrn_max_.y;
                }
                break;
            }
            default:
                break;
        }

        while(window_.pollEvent(event_)) {
            if (is_exit_triggered_())
                exit = true;
        }

        // TODO menu stuff (players selection, etc...)
        clear_screen_();
        window_.draw(rectangle_screen_);
        window_.draw(*tCurrent);
        window_.draw(*tNext);
        window_.draw(rectangle_border_);
        window_.display();

        dt.restart();
    }

    delete tCurrent;
    delete tNext;
    return 0;
}

void Game::clear_screen_() {
    window_.clear(color_clear_);
}

bool Game::is_exit_triggered_() {
    return (
            event_.type == sf::Event::Closed ||
            (event_.type == sf::Event::KeyReleased && event_.key.code == sf::Keyboard::Escape)
    );
}

void Game::pos_rel_to_point(sf::Vector2f point, sf::Text *text) {
    sf::FloatRect rect = text->getGlobalBounds();
    text->setPosition(
            point.x - rect.width / 2.0f,
            point.y - rect.height / 2.0f
    );
}

void Game::view_move_(sf::Vector2f offset, float t) {
    printf("dt=%f\n", t);

    sf::Vector2f real = offset * t;
    view_.move(offset * t);

    rectangle_screen_.move(real);
    rectangle_border_.move(real);

    window_.setView(view_);
}

