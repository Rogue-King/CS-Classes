#include <iostream>

int main() {
    int x;
    int *p;

    x = 140987;
    std::cout << x << std::endl;

    p = &x;

    std::cout << "x= " << x << std::endl;
    std::cout << "p= " << p << std::endl;
    std::cout << "*p= " << *p << std::endl;

    x = 12;

    std::cout << "*p= " << *p << std::endl;

}
