#ifndef DECK_H
#define DECK_H

#include "card.h"

class Deck {
    Card **pile;
    int size;
public:
    Deck(int size); // Parameterized Constructor
    ~Deck();        // Destructor
    bool addCard(Card *card);
    Card* drawTopCard();
    void showStack() const;
};

#endif