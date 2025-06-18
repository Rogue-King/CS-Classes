#include <iostream>
#include "shape.h"

void Quadrilateral::printSides() const {
    std::cout << "Sides = " << side1 << " " << side2 << " " << side3 << " " << side4 << "\n";
}