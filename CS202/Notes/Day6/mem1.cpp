#include <iostream>

int main() {
    int **x;
    x = new int*[3];
    
    for (int i = 0; i < 3; i++) {
        *(x + i) = new int[2];
    }
    **x = 1;
    *((*x) + 1) = 2;
    x[0][2] = 3;
    x[1][0] = 4;

    for (int i = 0; i < 3; i++) {
        delete[] *(x + i);
    }
    delete[] x;
}