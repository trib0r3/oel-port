#include "Graphics.h"

Graphics::Graphics(float windowWidth, float windowHeight, float cameraUnitWidth, float cameraUnitHeight)
  :DEFAULT_CLEAR_COLOR(c64::BLACK), cameraUnit_({ cameraUnitWidth ,cameraUnitHeight })
{
  font_commodore_.get("src/resources/PetMe.ttf");

  if ( cameraUnitHeight < 0 || cameraUnitWidth < 0 )
    mv::Logger::Log("Camera unit dimensions can't be negative", mv::Logger::stream_t::CONSOLE, mv::Logger::type_t::ERROR);
  
  window_.create(sf::VideoMode(windowWidth, windowHeight), "Oel Pompowacze");
  window_.setView(view_);
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
    textWrapper.getBackground()->setFillColor(color);

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

void Graphics::CameraChangeScene(int i, int j, Scene::Scene scene, bool sliding) {
  if(sliding)
  {
   

  }else
  {
    SceneBuild(scene, i, j);
    view_.setCenter(i*cameraUnit_.x, j*cameraUnit_.y);
  }
  window_.setView(view_);
}

void Graphics::SceneBuild(Scene::Scene scene, int i, int j) {
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
