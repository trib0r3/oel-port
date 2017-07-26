#pragma once

#include <string>
#include <fstream>
#include <iostream>
#include <chrono>
#include <ctime>


namespace mv
{
  class Logger
  {
    /* ===Objects=== */
  public:
    enum class stream_t
    {
      CONSOLE = 0,
      FILE = 1,
      BOTH = 2
    };

    enum class type_t
    {
      INFO = 0,
      SUGGESTION = 1,
      WARNING = 2,
      ERROR = 3
    };
  protected:
  private:
    /* ===Methods=== */
  public:
    static void Log( const std::string&, const Logger::stream_t& = Logger::stream_t::CONSOLE, const Logger::type_t& = Logger::type_t::ERROR );
  protected:
  private:

  static void sendMessage( const std::string& message, Logger::stream_t stream, std::string &prefix );

    static void consoleMessage( const std::string&message, std::string &prefix, std::time_t& time );

    static void fileMessage( const std::string&, std::string &prefix, std::time_t& time );

    static void setPrefix( Logger::type_t type, std::string &prefix );
  };
}
