#ifndef SALEREGISTER_H
#define SALEREGISTER_H

class SaleRegister {
    int cash;
public:
    SaleRegister(int amount = 1000) : cash(amount) {};
    int getBalance() const { return cash; }
    void addCash(int amount);
    void dispenseCash(int amount);
};

#endif