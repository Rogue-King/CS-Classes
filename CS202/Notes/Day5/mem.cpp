#include <iostream>

int main() {
    int *p = nullptr;
    p = new int[3];
    *(p+0) = 1;
    *(p+1) = 2;
    *(p+2) = 3;
    std::cout << "p = " << p[0] << "\n";
    std::cout << "p = " << p[1] << "\n";
    std::cout << "p = " << p[2] << "\n";
    delete[] p;
    // p = nullptr;
}