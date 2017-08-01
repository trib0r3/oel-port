#pragma once

#include <map>
#include <functional>

#include "FunctionPointerWrapper_t.hpp"

#include "SFML/Window/Keyboard.hpp"

namespace mv
{
  template <class T>
  class InputManager
  {
    /* ===Objects=== */
  public:
  protected:
  private:
    std::map < sf::Keyboard::Key, FunctionPointerWrapper_t<T>> keyData;
    /* ===Methods=== */
  public:
    void update();

    bool addKeyToCheck(sf::Keyboard::Key key, std::function<void(T&)> function, std::shared_ptr<T> object);

    bool eraseKey(sf::Keyboard::Key key);
  protected:
  private:
  };

  template <class T>
  void InputManager<T>::update()
  {
    for ( auto&var : keyData )
      if ( sf::Keyboard::isKeyPressed(var.first) )
        var.second.function(*var.second.object);
  }

  template <class T>
  bool InputManager<T>::addKeyToCheck(sf::Keyboard::Key key, std::function<void(T&)> function, std::shared_ptr<T> object)
  {
    keyData.emplace(key, FunctionPointerWrapper_t<T>(function, object));

    return true;
  }

  template <class T>
  bool InputManager<T>::eraseKey(sf::Keyboard::Key key)
  {
    keyData.erase(key);
    return false;
  }
}