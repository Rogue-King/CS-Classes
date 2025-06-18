#include "saleregister.h"

void SaleRegister::addCash(int amount) {
    cash += amount;
}

void SaleRegister::dispenseCash(int amount) {
    if (cash >= amount) {
        cash -= amount;
    }
}
