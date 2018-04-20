# Oel (port from Commodore64)

The purpose of this project is to create a port of game 'Oel Pompowacze'. Originally created in late 80's for Commodore64.

The port is written using C++ and SFML library.

Original source code you can find [here](LISTING.md) and reversing description [here](https://github.com/sheadovas/blog-projects/tree/master/blog-archive/Oel-Port) (PL)

## Project status

**(20/03/18)** Currently project is ```suspended```, but I'm going to to finish it (someday...) :P

For now, almost everything have been analysed, game is waiting for someone who will finish the most boring part: ~rewrite~ finish rewriting the code to c++.

## Running project

### Building from source code

#### Requirements

1. [CMake](https://cmake.org/)
2. [GCC](https://gcc.gnu.org/)
3. [SFML(2.4.2)](http://www.sfml-dev.org/download/sfml/2.4.2/)


#### Building (W.I.P)

1. Check requirements
2. `cd` into main project directory
3. Enter command: `make` to start building
4. Run binary from *bin/* folder!


### Install

Latest binaries:

1. *Linux* (coming soon)
2. *Windows* (comming soon)


## About analysis

### Files

Project is separated into folders:

```
├── docs
├── notes
├── obj
├── scripts
├── src
└── third-party
```

Interesting dirs:

1. [docs](docs/) - more official notes (documentation) for Oel Port
1. [notes](notes/) - containing files with my personal research (i.e. more priendy pseudo-basic code, similar to C code, etc.)
2. [scripts](scripts/) - containing helper-scripts
2. [src](src/) - containing translated game code into C++
2. [third-party](third-party/) - licenses for third party resources

### Useful links

Why so many links? Because Commodore & BASIC is bad docummented, every page contains different piece of 'good to know' information.

1. [BASIC Commands](https://www.c64-wiki.com/wiki/Category:BASIC-Command)
2. [Commodore Memory Map](http://sta.c64.org/cbm64mem.html)
2. [C64 emulator](vice-emu.sourceforge.net) *(needed only for testing original ROM)*
2. [Wikipedia Keywords](https://en.wikipedia.org/wiki/BASIC#Typical_BASIC_keywords)
3. [Commodore Manual](http://www.commodore.ca/manuals/pdfs/Commodore_Basic_4_Users_Reference%20Manual.pdf)
4. [BASIC Ref Manual](http://bitsavers.informatik.uni-stuttgart.de/pdf/phaseOneSystems/oasis/BASIC_Language_Reference_Manual_Mar80.pdf)


## License

Project is under [BSD-3](LICENSE.md) License. Except resources listed in [3rd party modules](#3rd-party) (they have own license, go to proper section for more info).

### 3rd-party

Following resources are coming from external sources (with own licenses):

1. [PetMe Font](src/resources/Commodore-64-v6.3.ttf) is created by [KREATIVE SOFTWARE](http://www.kreativekorp.com/) | [LICENSE](third-party/PetMeFontLicense.txt)
2. [Libs by PiGames members](src/third-party/pigames) is created by [PiGames](http://pigam.es/) | [LICENSE](third-party/third-party-sources.txt)

