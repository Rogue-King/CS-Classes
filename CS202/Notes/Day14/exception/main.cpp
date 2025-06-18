#include <iostream>

using namespace std;

int division(int op1, int op2) {
    if (op2 == 0) {
        throw "Division by 0";
    }
    return op1/op2;    
}

int main() {
    int z;
    try{
        string s = NULL;
    } catch(std::logic_error e) {
        cout << "Your code is broken lol\n";
        cout << "Here's what's broken: " << e.what() << endl;
    }
}