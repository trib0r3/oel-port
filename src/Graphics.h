#ifndef SRC_GRAPHICS_H
#define SRC_GRAPHICS_H

#include <SFML/Graphics/Color.hpp>
#include <string>

#include "colors.h"
#include "types.h"
#include "Player.h"
#include <SFML/Graphics/RectangleShape.hpp>
#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/Graphics/Font.hpp>

class Graphics {
public:
  enum class WriteMode {
    BlackOnWhite, WhiteOnBlack
  };

  Graphics();

  void DrawMenu(Player*);
  // TODO Draw other stuff like player creation etc

  void SetInnerColor(const sf::Color& color);
  void SetOuterColor(const sf::Color&  color);

  bool GetInteractive(int& value, int a = 0, int b = 0, bool clamp = false);
  bool GetInteractive(float& value, float a = 0, float b = 0, bool clamp = false);
  bool GetInteractive(const std::string& value, int a = 0, int b = 0, bool clamp = false);

  void Write(const std::string& text, WriteMode mode = WriteMode::WhiteOnBlack);
  void SetClearScreenColor(const sf::Color& color);

  void CursorMove(int x, int y);
  void CursorReset();

  void SetKeyboardCallback(Callback callback, int keyCode);

  void CameraChangeScene(int x, int y, bool sliding = false);
  void SceneBuild(Scene::Scene scene, int x, int y);

private:
  const sf::Color DEFAULT_CLEAR_COLOR;

  sf::RenderWindow window_;
  sf::View view_;
  sf::Font font_commodore_;

  sf::RectangleShape rectangle_screen_;
  sf::RectangleShape rectangle_border_;

  sf::Color color_clear_;;
};


#endif //SRC_GRAPHICS_H
