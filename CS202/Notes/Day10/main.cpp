#include <iostream>

class A {
public:
    virtual void f() = 0;
};

class B {
public:
    virtual void f() {};
};

class C : public A {
public:
    void f() { std:: cout << "Function f from Class C\n"; }
};

class D : public A {
public:
    void f() { std::cout << "Function f from Class D\n"; }
};

int main() {
    A **a;
    B b;
    C c;
    D d;

    a = new A*[2];
    a[0] = &c;
    a[1] = &d;

    a[0]->f();
    a[1]->f();
}