#include <cstdio>
#include <SFML/Graphics.hpp>

// TODO load params from config
const unsigned int SCRN_WIDTH  = 1280;
const unsigned int SCRN_HEIGHT = 720;

const char* GAME_TITLE = "Oel Pompowacze (port by shead)";

int main(int argc, char** argv)
{
  sf::RenderWindow window(sf::VideoMode(SCRN_WIDTH, SCRN_HEIGHT), 
                          GAME_TITLE,
                          sf::Style::Close);

  bool exit = false;
  while(!exit)
  {
    sf::Event event;
    while(window.pollEvent(event))
    {
      if(event.type == sf::Event::Closed)
      {
        exit = true;
      }
    }

    window.clear();
    window.display();
  }

  return 0;
}
