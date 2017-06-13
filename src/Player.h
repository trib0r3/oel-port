#ifndef SRC_PLAYER_H
#define SRC_PLAYER_H

#include <string>

class Player {
public:
    std::string name;
    int money;
    int bank_loan;

    Player();
    Player(std::string name, int starting_money);

private:
    void init_();
};


#endif //SRC_PLAYER_H
