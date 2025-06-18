#ifndef CARD_H
#define CARD_H

#include <iostream>

enum class CardType {
    BASIC,
    ATTACK,
    BLOCK
};

class Card {
private:
    std::string name;   ///< Name of the card.
    int value;          ///< Cost of the card.
    int energyCost;     ///< Energy required to play the card.
    CardType type;

public:
    // Constructors and Destructor
    Card() : name(""), value(0), energyCost(0), type(CardType::BASIC) {};       /// Default Constructor
    Card(std::string name, int value, int energyCost, CardType = CardType::BASIC);  /// Parameterized Constructor
    
    // Accessors (Getters)
    int getEnergyCost() const { return energyCost; }          /// Returns energyCost of the object.
    int getValue() const { return value; }                    /// Returns value of the object.
    std::string getName() const { return name; }              /// Returns name of the object.
    CardType getCardType() const { return type; }

    // Mutators (Setters)
    void setEnergyCost(int);
    void setValue(int);
    void setName(std::string);

    // Functions
    void showCard();
    void operator= (const Card&);
};

class AttackCard : public Card {
    int dmg;
public:
   AttackCard(std::string set_name, int set_value, int set_energyCost, int set_dmg);
   void printAttackCard() const;
};

class BlockCard : public Card {
    int block;
public:
    BlockCard(std::string set_name, int set_value, int set_energyCost, int set_block);
    void printBlockCard() const;
};

#endif