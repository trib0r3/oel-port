#include "TextWrapper.hpp"


std::shared_ptr<sf::RectangleShape> TextWrapper::getBackground()
{
  return background;
}

const sf::Text& TextWrapper::getText()
{
  return text;
}

void TextWrapper::draw(sf::RenderTarget & target, sf::RenderStates states) const
{
  if ( background != nullptr )
    target.draw(*background, states);

  target.draw(text);
}
