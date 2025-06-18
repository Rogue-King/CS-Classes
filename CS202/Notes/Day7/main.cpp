#include <iostream>
#include <string>
#include <fstream>
#include "deck.h"
#include "card.h"

using namespace std;


enum class SortBy {
        VALUE,
        ENERGYCOST
};


/* ***********************************
    Main Function
* ***********************************/
int main() {
    Deck d(20);
    Card* p; 
    d.addCard(new AttackCard("Strike", 1, 1, 6));
    d.addCard(new BlockCard("Defend", 1, 1, 5));
    d.addCard(new Card("Madness", 2, 3));
    d.showStack();
    p = d.drawTopCard();
    p->showCard();
    delete p;
    return 0;
}
