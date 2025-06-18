#include <iostream>

class A {
public:
    virtual void direct() = 0;
    virtual void indirect() { direct(); }
    A() {
        direct();   // Direct call to a purely virtual function!!!
        indirect(); // Indirect call to a purely virtual function!!!
    }
};

class B : public A {
public:
    void direct() { std::cout << "Direct fn.\n"; }
};

int main() {
    B b;
}