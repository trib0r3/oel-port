#ifndef SRC_GRAPHICS_H
#define SRC_GRAPHICS_H

#include <SFML/Graphics/Color.hpp>
#include <string>

#include "colors.h"
#include "types.h"
#include "Player.h"

class Graphics {
public:
  enum WriteMode {
    BlackOnWhite, WhiteOnBlack
  };

  Graphics();

  void DrawMenu(Player*);
  // TODO Draw other stuff like player creation etc

  void SetInnerColor(sf::Color color);
  void SetOuterColor(sf::Color color);

  bool GetInteractive(int& value, int a=0, int b=0, bool clamp=false);
  bool GetInteractive(float& value, float a=0, float b=0, bool clamp=false);
  bool GetInteractive(std::string& value, int a=0, int b=0, bool clamp=false);

  void Write(std::string text, WriteMode mode = WhiteOnBlack);
  void SetClearScreenColor(sf::Color color);

  void CursorMove(int x, int y);
  void CursorReset();

  void SetKeyboardCallback(Callback callback, int keyCode);

  void CameraChangeScene(int x, int y, bool sliding=false);
  void SceneBuild(Scene::Scene scene, int x, int y);
};


#endif //SRC_GRAPHICS_H
