#include <iostream>
#include <iomanip>

int main() {
    char x[3] = {'a', 'b', '7'};
    std::cout << "*x = " << *x << std::endl;
    std::cout << "*(x+1) = " << *(x+1) << std::endl;
    std::cout << "*(x+2) = " << *(x+2) << std::endl;

    std::cout << "x = " << x << std::endl;
    std::cout << "(x+1) = " << (x+1) << std::endl;
    std::cout << "(x+2) = " << (x+2) << std::endl;
}