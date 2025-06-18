#ifndef SNACKTYPE_H
#define SNACKTYPE_H

#include <string>

class SnackType {
    std::string name;
    int cost;
    int qty;

public:
    SnackType(std::string set_name = "", int set_cost = 195, int set_qty = 50) 
        : name(set_name), cost(set_cost), qty(set_qty) {}; 
    std::string getName() const { return name;}
    int getCost() const { return cost;}
    int getQty() const { return qty;}
    void addItems(int qty);
    bool dispenseItem(); 
};

#endif