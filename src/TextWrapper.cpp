#include "TextWrapper.hpp"


std::shared_ptr<sf::RectangleShape>& TextWrapper::getBackground()
{
  return background;
}

sf::Text& TextWrapper::getText()
{
  return text;
}

void TextWrapper::setPosition(float x, float y)
{

  if ( background != nullptr )
  {
    constexpr float localExtension = 3.5f;
    background->setPosition(x + localExtension, y + localExtension);
  }
  text.setPosition(x, y);
}

void TextWrapper::setPosition(sf::Vector2f pos)
{
  setPosition(pos.x, pos.y);
}

void TextWrapper::setCenter()
{
  if ( background != nullptr )
    background->setOrigin(background->getGlobalBounds().width / 2.f, background->getGlobalBounds().height / 2.f);
  text.setOrigin(text.getGlobalBounds().width / 2.f, text.getGlobalBounds().height / 2.f);

}

void TextWrapper::draw(sf::RenderTarget & target, sf::RenderStates states) const
{
  if ( background != nullptr )
    target.draw(*background, states);

  target.draw(text);
}
