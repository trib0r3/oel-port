#include "Player.h"

Player::Player() {
    init_();
}

Player::Player(std::string name, int starting_money) {
    this->name = name;
    money = starting_money;

    init_();
}

void Player::init_() {
    bank_loan = 0;
}


