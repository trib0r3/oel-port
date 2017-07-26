#include "Graphics.h"

Graphics::Graphics() {

}

void Graphics::DrawMenu(Player *) {

}

void Graphics::SetInnerColor(sf::Color color) {

}

void Graphics::SetOuterColor(sf::Color color) {

}

bool Graphics::GetInteractive(int &value, int a, int b, bool clamp) {
  return false;
}

bool Graphics::GetInteractive(float &value, float a, float b, bool clamp) {
  return false;
}

bool Graphics::GetInteractive(std::string &value, int a, int b, bool clamp) {
  return false;
}

void Graphics::Write(std::string text, Graphics::WriteMode mode) {

}

void Graphics::SetClearScreenColor(sf::Color color) {

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
