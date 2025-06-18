#include <iostream>
#include "pets.h"

using namespace std;

void callPrint (petType &p) { // Pass by reference
    p.print();
}

void callPrint2 (petType p) { // Pass by value
    p.print();
}

int main() {
    petType *pet;
    dogType *dog;
    petType pet1("Goofy");
    dogType dog1("Lucky", "Husky");

    dog = new dogType("Sparky", "Labrador");
    pet = dog;
    pet->print();
    cout << endl;
    dog->print();
    cout << endl;

    pet1 = dog1;
    pet1.print();
    cout << endl;
    dog1.print();
    cout << endl;
}