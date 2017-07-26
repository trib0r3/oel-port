#ifndef SRC_CONFIG_H
#define SRC_CONFIG_H

#include <cinttypes>
#include <string>

#include "types.h"

class Config {
public:
  /// Supported langs
  enum Language {
    ENG, /* default */
    DE,
    PL
  };

  Language language;
  uint64_t maxLoan;
  uint64_t startMoney;

  /// Loads config
  void LoadConfig();

  /// Sets and loads proper lanugage translations from file
  void SetLanguage(Language language);

  /// Returns correct string
  std::string GetString(TranslatedString::TranslatedString ts)

private:
  std::string translated_words_[TranslatedString::__COUNT__];
};


#endif //SRC_CONFIG_H
