#ifndef SRC_COMPANY_H
#define SRC_COMPANY_H

#include <cinttypes>
#include <string>

#include "Player.h"

virtual class Company {
public:
  bool BuyCompany(Player* newOwner);

  bool ChangeServicePrice(Player* caller);
  virtual bool BuyService(Player* caller, uint64_t quantity=1) = 0;

protected:
  std::string name_;
  Player* owner_;

  uint64_t company_price_;
  uint64_t serive_price_;
};


#endif //SRC_COMPANY_H
