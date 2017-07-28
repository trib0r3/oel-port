#include "Config.h"

void Config::LoadConfig() {

}

void Config::SetLanguage(Config::Language language) {

}

std::string Config::GetString(TranslatedString::TranslatedString ts) {
  return translated_words_[ts];
}
