#include "snacktype.h"

void SnackType::addItems(int qty) {
    this->qty += qty;
}

bool SnackType::dispenseItem() {
    if (qty > 0) {
        qty -= 1;
        return true;
    }
    return false;
}