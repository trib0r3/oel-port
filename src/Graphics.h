#ifndef SRC_GRAPHICS_H
#define SRC_GRAPHICS_H

#include <SFML/Graphics/Color.hpp>
#include <string>

#include "colors.h"
#include "types.h"
#include "oel/Player.h"
#include "third-party/pigames/Cache.hpp"

#include <SFML/Graphics/RectangleShape.hpp>
#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/Graphics/Font.hpp>
#include <SFML/Graphics/Text.hpp>
#include "TextWrapper.hpp"

class Graphics
  :public sf::Drawable
{
public:
  enum class WriteMode {
    BlackOnWhite, WhiteOnBlack
  };

  Graphics(float windowWidth = 600, float windowHeight = 600, float cameraUnitWidth = 600, float cameraUnitHeight = 600);

  void DrawMenu(Player*);
  // TODO Draw other stuff like player creation etc

  void SetInnerColor(const sf::Color& color);
  void SetOuterColor(const sf::Color&  color);

  bool GetInteractive(int& value, int a = 0, int b = 0, bool clamp = false);
  bool GetInteractive(float& value, float a = 0, float b = 0, bool clamp = false);
  bool GetInteractive(std::string& value, int a = 0, int b = 0, bool clamp = false);

  void Write(const std::string& text, WriteMode mode = WriteMode::WhiteOnBlack, const sf::Color& color = c64::BLACK);
  void SetClearScreenColor(const sf::Color& color);

  void CursorMove(int x, int y);
  void CursorReset();

  void SetKeyboardCallback(Callback callback, int keyCode);

  /*
   *x;y <=> dimensions in pixels
   *i;j <=> dimensions in camera's units
  */
  void CameraChangeScene(int i, int j, Scene::Scene scene, bool sliding = false);
  void SceneBuild(Scene::Scene scene, int i, int j);

private:
  virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const;

  const sf::Color DEFAULT_CLEAR_COLOR;
  const sf::Vector2f cameraUnit_;
  
  sf::Vector2i currentSceneKey;
  sf::RenderWindow window_;
  sf::View view_;
  mv::Cache<sf::Font> font_commodore_;

  sf::RectangleShape rectangle_screen_;
  sf::RectangleShape rectangle_border_;

  sf::Color color_clear_;;

  sf::Vector2f cursor_;

  std::vector<TextWrapper> texts_;
};


#endif //SRC_GRAPHICS_H
