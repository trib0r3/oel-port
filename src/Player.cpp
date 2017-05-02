#include "Player.h"

Player::Player(std::string name, int starting_money) {
    this->name = name;
    money = starting_money;
    bank_loan = 0;
}
