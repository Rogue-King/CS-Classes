#include "pets.h"
#include <iostream>

using namespace std;

void petType::print() const{
    cout << "Name: " << name;
}

void dogType::print() const{
    petType::print();
    cout << ", Breed: " << breed;
}