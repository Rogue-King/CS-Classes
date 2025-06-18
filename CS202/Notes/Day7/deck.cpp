#include "deck.h"
#include "card.h"

Deck::Deck(int size) {
    if (size < 1) {
        this->size = 10;
    } else {
        this->size = size;
    }
    pile = new Card*[size];
    for (int i = 0; i < size; i++) {
        pile[i] = nullptr;
    }
}

Deck::~Deck() {
    for (int i = 0; i < size; i++) {
        delete pile[i];
    }
    delete[] pile;
}

bool Deck::addCard(Card *card) {
    for (int i = 0; i < size; i++) {
        if (pile[i] == nullptr) {
            pile[i] = card;
            return true;
        }
    }
    return false;
}

void Deck::showStack() const {
    std::cout << "Deck:\n";
    for (int i = 0; i < size; i++) {
        if (pile[i] != nullptr) {
            switch(pile[i]->getCardType()) {
                case CardType::BASIC:
                    pile[i]->showCard();
                    break;
                case CardType::ATTACK:
                    static_cast<AttackCard*>(pile[i])->printAttackCard();
                    break;
                case CardType::BLOCK:
                    static_cast<BlockCard*>(pile[i])->printBlockCard();
                    break;
            }
        }
    }
}

Card* Deck::drawTopCard() {
    Card *p = nullptr;
    for (int i = 0; i < size; i++) {
        if (pile[i] != nullptr) {
            p = pile[i];
            pile[i] = nullptr;
            return p;
        }
    }
    return nullptr;
}