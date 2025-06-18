#include <iomanip>
#include "card.h"

using namespace std;


Card::Card(string name, int value, int energyCost, CardType cardType) {
    if (name.length() > 20) {
        // cerr << "Name can't be longer than 20 characters." << endl;
        this->name = "";
    } else {
        this->name = name;
    }
    if (value > 8) {
        this->value = 8;
    }
    else if (value < 0) {
        this->value = 0;
    }
    else {
        this->value = value;
    }
    if (energyCost > 5) {
        this->energyCost = 5;
    }
    else if (energyCost < 0) {
        this->energyCost = 0;
    }
    else {
        this->energyCost = energyCost;
    }
    type = cardType;
}


void Card::setEnergyCost(int cost) {
    if (cost > 5) {
        energyCost = 5;
    }
    else if (cost < 0) {
        energyCost = 0;
    }
    else {
        energyCost = cost;
    }
}


void Card::setValue(int value) {
    if (value > 8) {
        this->value = 8;
    }
    else if (value < 0) {
        this->value = 0;
    }
    else {
        this->value = value;
    }
}


void Card::setName(string name) {
    if (name.length() > 20) {
        cerr << "Name can't be longer than 20 characters." << endl;
        this->name = "";
    } else {
        this->name = name;
    }
}


void Card::showCard() {
    cout << left << setw(20) << name << " :: " << setw(3) << "VAL " << setw(2) << value << setw(3) << " ENG " << setw(2) << energyCost << "\n";
}


void Card::operator= (const Card& other) {
    this->name = other.name;
    this->value = other.value;
    this->energyCost = other.energyCost;
}

AttackCard::AttackCard(std::string set_name, int set_value, int set_energyCost, int set_dmg)
            : Card (set_name, set_value, set_energyCost, CardType::ATTACK) {
    if (set_dmg < 0) {
        this->dmg = 0;
    } else {
        this->dmg = set_dmg;
    }
}

BlockCard::BlockCard(std::string set_name, int set_value, int set_energyCost, int set_block) 
            : Card (set_name, set_value, set_energyCost, CardType::BLOCK) {
    if (set_block < 0) {
        this->block = 0;
    } else {
        this->block = set_block;
    }
}

void AttackCard::printAttackCard() const {
    cout << left << setw(20) << getName() << " :: " 
         << setw(3) << "VAL " << setw(2) << getValue() 
         << setw(3) << " ENG " << setw(2) << getEnergyCost()
         << setw(3) << " DMG " << setw(2) << dmg << "\n";
}

void BlockCard::printBlockCard() const {
    cout << left << setw(20) << getName() << " :: " 
         << setw(3) << "VAL " << setw(2) << getValue() 
         << setw(3) << " ENG " << setw(2) << getEnergyCost()
         << setw(3) << " BLK " << setw(2) << block << "\n";    
}

