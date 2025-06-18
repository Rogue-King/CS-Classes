#ifndef SHAPE_H
#define SHAPE_H

class Quadrilateral {
private:
    int side1;
    int side2;
    int side3;
    int side4;

protected:
    Quadrilateral(int a, int b, int c, int d) : side1(a), side2(b), side3(c), side4(d) {};

public:
    void printSides() const;
};

class Rectangle : public Quadrilateral {
public:
    Rectangle (int a, int b) : Quadrilateral (a, b, a, b) {};
};

class Square : public Quadrilateral {
public:
    Square(int side_value) : Quadrilateral(side_value, side_value, side_value, side_value) {}; 
};

#endif