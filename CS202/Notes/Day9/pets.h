#ifndef PETS_H
#define PETS_H
#include <iostream>

class petType {
    std::string name;
public:
    petType(std::string n = "") : name(n) {};
    ~petType() {};
    virtual void print() const;
};

class dogType : public petType {
    std::string breed;
public:
    dogType(std::string n = "", std::string b = "") 
    : petType(n), breed(b) {};
    ~dogType() {};
    void print() const;
};

#endif