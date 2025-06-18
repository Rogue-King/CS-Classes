#include <iostream>

/**
 * @brief Returns addition of x and y wink wink
 * A detailed description of the function.
 * @param x some int
 * @param y another int
 * @return sum of x and y
 */
int func1(int x, int y) {
    return x + y;
}

double func1(double x, double y) {
    return x + y;
}

int func2(int &x, int &y) {
    x = 4;
    y = 3;
    return x + y;
}

int main() {
    int z = 1, s = 2;
    double z1 = 2.3, z2 = 4.5;
    int v = func1(z, s);
    double x;    
    std::cout << "Func1\nv=" << v << "\n";
    std::cout << "z=" << z << "\ns=" << s << "\n\n";

    x = func1(z1, z2);
    std::cout << "Func1\nx=" << x << "\n";
    std::cout << "z1=" << z1 << "\nz2=" << z2 << "\n\n";
    // v = func2(z, s);    
    // std::cout << "Func2\nv=" << v << "\n";
    // std::cout << "z=" << z << "\ns=" << s << "\n";
}