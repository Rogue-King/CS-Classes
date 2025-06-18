#include <iostream>
#include "saleregister.h"
#include "snacktype.h"

void sellItem (SnackType &item, SaleRegister &sale_reg);
void showSelection (SnackType items[]);

int main() {
    SaleRegister sale_reg;
    std::cout << "cash = " << sale_reg.getBalance() << "\n";
    sale_reg.addCash(50);
    std::cout << "cash = " << sale_reg.getBalance() << "\n";
    sale_reg.dispenseCash(100);
    std::cout << "cash = " << sale_reg.getBalance() << "\n";

    SnackType snack1("Lays",299,100);
    std::cout << snack1.getName() << " " << snack1.getCost() << " " << snack1.getQty() << "\n";
    snack1.dispenseItem();
    std::cout << snack1.getName() << " " << snack1.getCost() << " " << snack1.getQty() << "\n";

}

void sellItem (SnackType &item, SaleRegister &sale_reg){
    if (item.getQty() < 1) {
        std::cout << item.getName() << " is out of stock\n";
    } else {

    }
}