#include <iostream>

class A { // Non-abstract
public:
    virtual void foo() { std::cout << "Foo from the A.\n"; }
};

class B : public A { // Abstract
public:
    virtual void foo() = 0;
};

class C : public B { // Non-abstract
public:
    void foo() { std::cout << "Foo from the C.\n"; }
};

int main() {
    C c;
    A a;
    a.foo();
    c.foo();
}