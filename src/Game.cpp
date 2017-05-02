#include "Game.h"

Game::Game(int current_year) {
    DEFAULT_CLEAR_COLOR = sf::Color::Black;

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

    color_border_ = sf::Color::Black;
    color_inner_ = sf::Color::Red;
    color_clear_ = DEFAULT_CLEAR_COLOR;

    if (prepare_consts_to_load_()) {
        return 2;
    }

    if(load_graphics_module_()) {
        return 3;
    }

    if(show_menu_()) {
        return 4;
    }

    /* Game loop */
    // TODO game loop

    return 0;
}

int Game::load_graphics_module_() {
    if(!font_commodore_.loadFromFile("../resources/PetMe.ttf")) {
        return 1;
    }


    window_.create(
            sf::VideoMode(1366, 768),
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
    int count = 0;
    while(false) // FIXME
    {
        // TODO menu stuff (players selection, etc...)
        clear_screen_();
        show_menu_();
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
