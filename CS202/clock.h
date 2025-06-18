//header file
//in actual: #include <"clock.h">
//how to compile with header.
//first compile header with: g++ -c clock.cpp
//then the main file: g++ main.cpp clock.o
// then compile all together. g++ -o main.out main cpp clock.o

//header guards: #ifndef CLOCK_H    -> if not defined
//#define CLOCK_H                   -> define this
//Declare stuff here
//#endif                           -> stop ifing
//
//Clock is file name
//these must be included in headerfile. 

//submitied code on code grade. 
//-wpedantic -wall -wextra -std-c++11
class Clock {
private:
    int hr;
    int min;
    int sec;

public:
    Clock();
    Clock(int, int, int);
    ~Clock() {};
    // Clock(const Clock &obj);
    void showTime() const;
    void setHr(int);
    void setMin(int);
    void setSec(int);
    int getSec() const { return sec; }
    int getMin() const { return min; }
    int getHr() const { return hr; }
};