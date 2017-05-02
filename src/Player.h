#ifndef SRC_PLAYER_H
#define SRC_PLAYER_H

#include <string>

class Player {
public:
    std::string name;
    int money;
    int bank_loan;

    Player(std::string name, int starting_money);
};


#endif //SRC_PLAYER_H
