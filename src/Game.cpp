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

    rectangle_screen_.setOutlineColor(c64::BLACK);
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
    rectangle_screen_.setOutlineThickness(-64.0f); // FIXME find proper value

    window_.create(
            sf::VideoMode(scrn_width, scrn_height),
            "Oel - Port by shd",
            sf::Style::Close | sf::Style::Titlebar
    );
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
    while(!exit)
    {
        while(window_.pollEvent(event_)) {
            if (is_exit_triggered_())
                exit = true;
        }

        // TODO menu stuff (players selection, etc...)
        clear_screen_();
        window_.draw(rectangle_screen_);
        draw_logo_();
        window_.display();
    }

    return 0;
}

void Game::draw_logo_() {
    // TODO draw logo
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
