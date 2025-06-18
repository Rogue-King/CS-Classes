#include <iostream>
//using namespace std;

void func1(){
    static int x = 5; 
    x += 1;
    std::cout << "Func1: " << x << std::endl; 

}

void func2(){
    int x = 5; 
    x += 1;
    std::cout << "Func2: " << x << std::endl; 

}

int main() {
    func1();
    func1();
    func1(); 
    func2();
    func2();
    func2(); 
    func1(); 
}
//the static variable is initialized and effected only once. 





//Static Memory Allocation != static members. 
//Dynamic Memory Allocation