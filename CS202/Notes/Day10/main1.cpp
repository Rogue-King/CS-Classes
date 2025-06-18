#include <iostream>

class AB {
public:
    virtual void f() = 0;
};

class D : public AB {
public:
    void g();
};

int main() {
    D d;
}