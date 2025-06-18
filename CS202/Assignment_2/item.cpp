/*
* Name: Miguel Muniz , 8001437775, 1002 , ASSIGNMENT_ 2
* Description : Simulates the Fornite inventory system and displays the players inventory to the user.
* Input : (in Main.cpp)-> player1.pickup(new Weapon("HammerAssault", AmmoType::MEDIUM, 31));
* Output : Weapon :        HammerAssault : AMMO   Medium : DMG  31EXPECTED_PROGRAM_OUTPUT
*/
#include <iostream>
#include <iomanip>
#include "item.h"

using namespace std;

/* ************************************************
    Item Class Definitions
* ************************************************/

/*
    This is a helper class used for the printItem.
    It will return a string for the corresponding
    ItemType. Note that this is a static function
    so every object does not have an independent 
    copy of it.
*/

/**
 * Returns the ItemType as a string.
 * 
 * @param type ItemType enum value.
 * @return Corresponding string for ItemType enum value.
 */
string Item::getItemTypeAsString(ItemType type){
    switch (type) {
        case ItemType::WEAPON:
            return "Weapon";
        case ItemType::HEALING:
            return "Healing";
        case ItemType::UTILITY:
            return "Utility";
        default:
            return "Unknown";
    }
}

/**
 * Prints an item.
 * 
 * @return None.
 */ 
void Item::printItem() const {
    std::cout << setw(10) << getItemTypeAsString(item) 
         << " : " << setw(20) <<  name;
}

/* ************************************************
    Weapon Class Definitions
* ************************************************/
/*
    Parameterized constructor for the Weapon class that
    calls the Item constructor to set name and item type.
    This has been provided to you as an example.
*/

/**
 * Parameterized constructor for Weapon class.
 * 
 * @param name Name of the weapon.
 * @param ammo Ammo type used by the weapon.
 * @param dmg Damage done by the weapon.
 */ 
Weapon::Weapon(string name, AmmoType ammo, double dmg) : Item(name, ItemType::WEAPON) {
    this->ammo = ammo;
    this->dmg = dmg;
}


/*
    Implement the getAmmoTypeAsString(AmmoType) function
    here. Use the getItemTypeAsString(ItemType) function
    as an example.

    Write your code under this comment. Make sure to write
    the documentation as well.
*/

/**
 * Returns the AmmoType as a string. 
 * 
 * @param  type of ammo for weapon.
 * @return Corresponding string for AmmoType enum value.
 */ 
string Weapon::getAmmoTypeAsString(AmmoType type){
    switch (type) {
        case AmmoType::HEAVY:
            return "Heavy";
        case AmmoType::MEDIUM:
            return "Medium";
        case AmmoType::LIGHT:
            return "Light";
        case AmmoType::SHELLS:
            return "Shells";
        default:
            return "Unknown";
    }
}


/*
    Note that this print function uses the printItem() function
    from the parent class.
*/
/**
 * Prints the weapon.
 * 
 * @return None.
 */ 
void Weapon::printWeapon() const {
    Item::printItem();
    cout << " : AMMO " << setw(8) << getAmmoTypeAsString(ammo) 
         << " : DMG " << setw(3) << dmg << endl; 
}

/* ************************************************
    Healing Class Definitions
* ************************************************/
/*
    Implement the Healing class yourself. Use the examples given
    above to help you.
    # Implement the parameterized constructor.
    # Implement the getHealTypeAsString(HealType heal) function.
    # Implement the printHealing() function.
*/


/**
 * Parameterized constructor for Healing class.
 * 
 * @param name Name of the heal item.
 * @param healType Heal type of the the heal item.
 * @param amount amount of healing done by the heal item.
 */ 
Healing::Healing(string name, HealType healType, int amount) : Item(name, ItemType::HEALING) {
    this->healType = healType;
    this->amount = amount;
}


string Healing::getHealTypeAsString(HealType type){

    switch (type) {
        case HealType::HP:
            return "HP";
        case HealType::SHIELD:
            return "Shield";
        default:
            return "Unknown";
    }
    
    //for testing Item
//return "";
}


void Healing:: printHealing() const{
    Item::printItem();
    cout << " : TYPE " << setw(8) << getHealTypeAsString(healType) 
         << " : AMT " << setw(3) << amount << endl; 
}

/* ************************************************
    Utility Class Definitions
* ************************************************/
/*
    Constructor for this class has been given to you.
    Implement the printUtility() function. Make sure
    the output matches the Sample Output provided to
    you.
*/
void Utility::printUtility() const{
    Item::printItem();
    cout << endl;

}