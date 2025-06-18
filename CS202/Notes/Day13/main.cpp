#include <iostream>

using namespace std;
class Coord {
    int x;
    int y;

public:
    Coord(int set_x = 0, int set_y = 0) : x(set_x), y(set_y) {};
    Coord(const Coord &obj) : x(obj.x), y(obj.y) {};
    void operator=(const Coord &obj) {
        this->x = obj.x;
        this->y = obj.y;
    }
    void print() const {
        std::cout << "(" << x << ", " << y << ")";
    }
    friend Coord operator + (const Coord &op1, const Coord &op2);
    friend Coord operator + (const Coord &op1, const int &op2);
    friend ostream& operator<< (ostream& op1, const Coord &op2);
};

int main() {
    Coord a(2, 3);
    Coord b(5, 6);
    Coord c;
    c = a + b;
    std::cout << "result = " << c << "\n";
    // c.print();
    // std::cout << "\n";

    c = c + 2;
    std::cout << "result = " << c << "\n";
    // c.print();
    // std::cout << "\n";
}

Coord operator+ (const Coord &op1, const Coord &op2) {
    Coord result;
    result.x = op1.x + op2.x;
    result.y = op1.y + op2.y;
    return result;
}

Coord operator+ (const Coord &op1, const int &op2) {
    Coord result;
    result.x = op1.x + op2;
    result.y = op1.y + op2;
    return result;
}

ostream& operator<< (ostream& op1, const Coord &op2) {
    op1 << "(" << op2.x << ", " << op2.y << ")";
    return op1;
}



// Coord Coord::operator+ (const Coord &op2) {
//     Coord result;
//     result.x = this->x + op2.x;
//     result.y = this->y + op2.y;
//     return result;
// }