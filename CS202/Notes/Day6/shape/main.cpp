#include <iostream>
#include "shape.h"

int main() {
    Square b(2);
    Rectangle c(4,5);
    b.printSides();
    c.printSides();

    Quadrilateral *a;
    Rectangle *x;
    a = static_cast<Quadrilateral*>(&b);
    x = static_cast<Rectangle*>(&b)
    a->printSides();
}