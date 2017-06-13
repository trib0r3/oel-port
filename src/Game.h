#ifndef SRC_GAME_H
#define SRC_GAME_H

#include <cstdlib>

#include <SFML/Graphics/Color.hpp>
#include <SFML/Graphics/Font.hpp>
#include <SFML/Graphics/RectangleShape.hpp>
#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/Graphics/Text.hpp>

#include <SFML/System/Clock.hpp>
#include <SFML/System/Time.hpp>

#include <SFML/Window/Event.hpp>

#include "Player.h"
#include "colors.h"

class Game {
public:
    Game(int current_year=1983);
    ~Game();

    int Run();

private:
    sf::Color DEFAULT_CLEAR_COLOR;

    sf::RenderWindow window_;
    sf::View view_;
    sf::Font font_commodore_;

    sf::RectangleShape rectangle_screen_;
    sf::RectangleShape rectangle_border_;

    sf::Color color_clear_;

    sf::Event event_;

    sf::Vector2f scrn_center_; // minx, miny ------ maxx, miny
    sf::Vector2f scrn_min_;    //     |                 |
    sf::Vector2f scrn_max_;    // minx, maxy ------ maxx, maxy

    int players_count_;
    int current_year_;

    Player* players_;


    int init_values_();
    int prepare_consts_to_load_();

    int show_menu_();
    inline void clear_screen_();
    inline bool is_exit_triggered_();

    int load_graphics_module_(unsigned int scrn_width=1366, unsigned int scrn_height=768);

    inline void pos_rel_to_point(sf::Vector2f point, sf::Text* text);
    inline void view_move_(sf::Vector2f offset, float t=1.0f);
};


#endif //SRC_GAME_H
