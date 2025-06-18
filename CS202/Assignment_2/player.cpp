/*
* Name: Miguel Muniz , 8001437775, 1002 , ASSIGNMENT_ 2
* Description : Simulates the Fornite inventory system and displays the players inventory to the user.
* Input : (in Main.cpp)-> player1.pickup(new Weapon("HammerAssault", AmmoType::MEDIUM, 31));
* Output : Weapon :        HammerAssault : AMMO   Medium : DMG  31EXPECTED_PROGRAM_OUTPUT
*/
#include <iostream>
#include "player.h"
//#define my_delete(x) {delete x; x = NULL;}

using namespace std;

/* ************************************************
    Inventory Class Definitions
* ************************************************/
/*
    The destructor must deallocate memory allocated to each
    slot. Use a loop to go through the slots array and deallocate
    memory for each Item.

    Write your code below this block (with documentation).
*/

/**
 * Is the destructor for Inventory and deallocates memory of each slot
 * It also deallocates memory when all slots are not in use.
 * @return none 
 */ 
Inventory::~Inventory() {
    for(int i=0; i < 5; i++){
        if(slots[i] != nullptr){
            delete slots[i];
            //delete[] *slots;
            slots[i] = nullptr;
            if (emptySlots == 5){
                delete slots[i];
                //delete[] *slots;
                slots[i] = nullptr;
            }

        //cout << "Deconstructor:" << slots[i] << endl;
        //delete slots[i];
        //delete[] *slots;

        }
    }
    delete[] *slots;
}



/*
    Implement the addItem(Item*) function. The item must be
    inserted in the first free slot found in the slots array.
    For example, if slots 0, 2, and 4 are filled, then the new
    item should be inserted into slot 1. Remember to decrement
    the emptySlots counter. This returns the slot number where
    the new item was inserted.

    Write your code below this block (with documentation).
*/

/**
 * allocates memory to a slot determined by the main funciton call 
 * if there are no
 * @param item object connected to slots
 * @return returns -1 if empty slots is equal to zero. 
 * @return returns i from the for loop if the slot is avaliable.
 * @return default return for function
 * 
 */
int Inventory::addItem(Item *item) {
    int i;
    if(emptySlots == 0){
        return -1; 
    }else{
        for (i = 0; i < 5; i++) {
            if(slots[i] == nullptr) {
                slots[i] = item;
                emptySlots --; 
                //cout << "AddItem:" << slots[i] << endl;
                return i;
            }
        }
    }    
    return 0;
}



/*
    Implement the removeItem(int) function. Removes the item
    from the slot number given in the function parameter. If
    no item is found at that slot, return false. Otherwise,
    remove the item and return true. Make sure to increment the
    emptySlots counter.

    Write your code below this block (with documentation).
*/


/**
 * allocates memory to a slot determined by the main funciton call 
 * 
 * @param slot object connected to get slots whcih returns the array slots with the slot inputed to the array which is inputed to the parameter.
 * @return returns false if null ptr detected. NOTE: I dont know why it does not stop the program from deleting pointers. I could not find a solution.
 * @return returns true if nullptr is not present  
 * @return returns 1 set for the function if any other case present.
 */ 
bool Inventory::removeItem(int slot){
    if(slots[slot] == nullptr){
       // cout << "null: " << slots[1] << endl;
        //cout << "null: " << slots[slot] << endl;
        //cout << "removeItemF: " << slot << endl;
        //cout << false << endl;
        return false;
    }
       //cout << "removeItemT:" << slots[slot] << endl;
    delete slots[slot];
    slots[slot] = nullptr;
    //cout << "removeItemS:" << slots[slot] << endl;
    emptySlots ++;
    return true;
}


/* ************************************************
    Player Class Definitions
* ************************************************/

/*
    This function depends on the addItem(Item*) function
    from the Inventory class. It needs to be implemented
    for this to work.
*/
/**
 * Adds an item to the player inventory.
 * Player will only pickup items if the inventory has
 * space. If not, the item will not be picked up.
 * 
 * @param item Pointer to a weapon, healing, or utlility item.
 * @return None.
 */
void Player::pickup(Item* item) {
    if (inventory.addItem(item) != -1) {
        cout << playerName << ": Picked up " << item->getName() << "!\n";
    } else {
        cout << playerName << ": My inventory is full!\n";
        delete item;
    }
}

/*
    This function depends on the removeItem(int) function
    from the Inventory class. It needs to be implemented
    for this to work.
*/
/**
 * Drops an item from the given inventory slot.
 * If the slot is empty, nothing will be dropped.
 * 
 * @param slot Slot number of item to drop.
 * @return None.
 */ 
void Player::drop(int slot) {
    Item* item = inventory.getSlot(slot);
    if (item) {
        cout << playerName << ": Dropped " << item->getName() << "!\n";
        inventory.removeItem(slot);
    } else {
        cout << playerName << ": Nothing to drop!\n";
    }
}

/*
    Only Healing items can be used. Other items should
    make the player say "Cannot use <item name>". Note
    that when an item is used, it must be removed from
    the inventory. If there's no item in the slot, the
    player must say "No item in this slot." When a healing
    item is used, the player must say "Used <item name>".
    Use static_cast to cast parent class to the required
    subclass. See the showPlayer() function for reference.

    Note: Player can have infinite HP and Shields. We're
    playing in cheat mode.

    Write your code below this block (with documentation).
*/

/**
 * Allows player to use a heal item. 
 * It first sets the item object to the inventory slot then it checks if the slot is availabe
 * if the slot is availabe it will check if its a heal item, if not an error is outputed
 * if it is a heal item it will then remove the item from its slot then static cast to check the heal type
 * then static cast again to get the amount for that heal type and the item and then add it to the respective health or sheild variable.
 * @param slot is the user selected slot to use an item.
 * @return None.
 */ 
void Player::useItem(int slot){
    Item *item;
    item = inventory.getSlot(slot);
    if (item == nullptr) {
       cout << playerName << ":" << " No item in Slot " << slot << ".\n";     
    }else{
        switch(item->getItemType()) {
            case ItemType::WEAPON:
                cout << playerName << ": Cannot use " << item->getName() << endl;
                break;
            case ItemType::HEALING:
                cout << playerName << ": Used " << item->getName() << endl;
                //Item *slot;
                //slot = inventory.removeItem(slot);
                //cout << "item: " << inventory.getSlot(slot) << endl;
                //cout << "testS: " << slot << endl;
                //cout << "test: " << inventory.removeItem(slot) << endl;
                    if(static_cast<Healing*>(item)->getHealType() == HealType::HP){
                        hp = hp + static_cast<Healing*>(item)->getAmount();
                    } else if(static_cast<Healing*>(item)->getHealType() == HealType::SHIELD){
                        shield = shield + static_cast<Healing*>(item)->getAmount();
                    }
                    inventory.removeItem(slot);
                //}
                break;
                
            case ItemType::UTILITY:
                cout << playerName << ": Cannot use " << item->getName() << endl;
                break;
            default:
                std::cout << "Unknown Item";
        }
    }
}



/*
    Note the use of static_cast in this function. We can
    use static_cast to typecast a parent class to any of
    its subclasses. Static cast ensures that any casting
    errors are caught at compile time.
*/
/**
 * Prints the player's hp, shields and inventory.
 * 
 * @return None.
 */ 
void Player::showPlayer() const {
    Item *item;
    cout << "\n" << playerName << " : " << hp << "(" << shield << ")\n";
    cout << "Inventory: \n";
    for (int i = 0; i < 5; i++) {
        item = inventory.getSlot(i);
        if (item == nullptr) {
            continue;;
        }
        cout << i;
        switch(item->getItemType()) {
            case ItemType::WEAPON:
                static_cast<Weapon*>(item)->printWeapon();
                break;
            case ItemType::HEALING:
                static_cast<Healing*>(item)->printHealing();
                break;
            case ItemType::UTILITY:
                static_cast<Utility*>(item)->printUtility();
                break;
            default:
                std::cout << "Unknown Item";
        }
    }
}