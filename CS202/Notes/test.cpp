#include <iostream>

using namespace std;

int main() {
    int *p;
    int x;
    x = 25;
    //p = &x;
    *p = 45;
    cout << x << "," << p << endl;




    /*
    int* arr = new int[4];
    cout << *((*arr)+2) << endl;
    */
    return 0;
}