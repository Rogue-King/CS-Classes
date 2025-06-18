#include <iostream>

int main() {
    int x;
    x = 5;
    int *p = &x;
    std::cout << "Address of x = " << p << "\n";
    std::cout << "*p = " << *p << "\n";
}