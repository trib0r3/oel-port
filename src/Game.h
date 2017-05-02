#ifndef SRC_GAME_H
#define SRC_GAME_H

#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/Graphics/Font.hpp>
#include <SFML/Graphics/Color.hpp>


#include "Player.h"

class Game {
public:
    Game(int current_year=1983);
    ~Game();

    int Run();

private:
    sf::Color DEFAULT_CLEAR_COLOR;

    sf::RenderWindow window_;
    sf::Font font_commodore_;

    sf::Color color_border_;
    sf::Color color_inner_;
    sf::Color color_clear_;

    int players_count_;
    int current_year_;

    Player* players_;


    int init_values_();
    int prepare_consts_to_load_();

    int show_menu_();
    void draw_logo_();
    inline void clear_screen_();

    int load_graphics_module_();
};


#endif //SRC_GAME_H
