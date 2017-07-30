#include "Graphics.h"

Graphics::Graphics()
  :DEFAULT_CLEAR_COLOR(c64::BLACK)
{
}

void Graphics::DrawMenu(Player *) {

}

void Graphics::SetInnerColor(const sf::Color& color) {
  rectangle_screen_.setFillColor(color);
}

void Graphics::SetOuterColor(const sf::Color& color) {
  rectangle_border_.setFillColor(color);
}

bool Graphics::GetInteractive(int &value, int a, int b, bool clamp) {
  return (clamp ? value >= a : value >= a && value <= b);
}

bool Graphics::GetInteractive(float &value, float a, float b, bool clamp) {
  return (clamp ? value >= a : value >= a && value <= b);
}

bool Graphics::GetInteractive(const std::string &value, int a, int b, bool clamp) {
  
  if ( a == 0 && b == 0 )
    return true;

  auto size = value.size();
  return (clamp ? size >= a : size >= a && size <= b);
}

void Graphics::Write(const std::string& text, Graphics::WriteMode mode) {

}

void Graphics::SetClearScreenColor(const sf::Color& color) {
  color_clear_ = color;
}

void Graphics::CursorMove(int x, int y) {

}

void Graphics::CursorReset() {

}

void Graphics::SetKeyboardCallback(Callback callback, int keyCode) {

}

void Graphics::CameraChangeScene(int x, int y, bool sliding) {

}

void Graphics::SceneBuild(Scene::Scene scene, int x, int y) {

}
