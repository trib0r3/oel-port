#pragma once
#include <SFML/Graphics/Drawable.hpp>
#include <SFML/Graphics/Text.hpp>
#include <SFML/Graphics/RectangleShape.hpp>
#include <SFML/Graphics/RenderTarget.hpp>

#include <memory>

class Graphics;

class TextWrapper
  :public sf::Drawable
{
public:
  std::shared_ptr<sf::RectangleShape> getBackground();
  sf::Text& getText();

  void setPosition(float x, float y);
  void setPosition(sf::Vector2f pos);
  void setCenter();
private:
  virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const;
  
  sf::Text text;
  std::shared_ptr<sf::RectangleShape> background;
};
