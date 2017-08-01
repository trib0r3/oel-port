#include "Graphics.h"

Graphics::Graphics()
  :DEFAULT_CLEAR_COLOR(c64::BLACK)
{
  font_commodore_.get("resources/PetMe.ttf");
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

  if ( value > b )
    value = b;

  return (clamp ? value >= a : value >= a && value <= b);
}

bool Graphics::GetInteractive(float &value, float a, float b, bool clamp) {
  if ( value > b )
    value = b;

  return (clamp ? value >= a : value >= a && value <= b);
}

bool Graphics::GetInteractive(std::string &value, int a, int b, bool clamp) {

  if ( a == 0 && b == 0 )
    return true;

  auto size = value.size();

  if ( size > b && clamp )
    value = value.substr(0, b);

  return (clamp ? size >= a : size >= a && size <= b);
}

void Graphics::Write(const std::string& text, Graphics::WriteMode mode, const sf::Color& color) {

  TextWrapper textWrapper;
  auto& sfText = textWrapper.getText();
  sfText.setFont(*font_commodore_.get("resources/PetMe.ttf"));
  sfText.setString(text);

  if ( mode == Graphics::WriteMode::BlackOnWhite )
    sfText.setFillColor(color);
  else
  {
    constexpr float extension = 15.f;
    textWrapper.getBackground() = std::make_shared<sf::RectangleShape>();
    textWrapper.getBackground()->setSize({ sfText.getGlobalBounds().width + extension ,sfText.getGlobalBounds().height + extension });
    textWrapper.getBackground()->setFillColor(c64::BLACK);

    sfText.setFillColor(rectangle_screen_.getFillColor());
  }

  textWrapper.setCenter();
  textWrapper.setPosition(cursor_);

  texts_.push_back(textWrapper);
}

void Graphics::SetClearScreenColor(const sf::Color& color) {
  color_clear_ = color;
}

void Graphics::CursorMove(int x, int y) {
  cursor_.x += x;
  cursor_.y += y;
}

void Graphics::CursorReset() {
  cursor_.x = 0;
  cursor_.y = 0;
}

void Graphics::SetKeyboardCallback(Callback callback, int keyCode) {

}

void Graphics::CameraChangeScene(int x, int y, bool sliding) {

}

void Graphics::SceneBuild(Scene::Scene scene, int x, int y) {

}

void Graphics::draw(sf::RenderTarget& target, sf::RenderStates states) const
{
  target.draw(rectangle_border_, states);
  target.draw(rectangle_screen_, states);

  for ( auto&text : texts_ )
  {
    target.draw(text);
  }
}
