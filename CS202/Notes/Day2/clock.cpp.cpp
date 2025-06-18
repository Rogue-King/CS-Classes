#include<iostream>
// a static member variable in a class 
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

int main() {
    Clock myclock(999,123,456);
    std::cout << "myClock:\n";
    myclock.showTime();
    myclock.setHr(12);
    myclock.setMin(25);
    myclock.setSec(9);
    myclock.showTime();

    Clock myclock2;
    myclock2 = myclock;
    std::cout << "myClock2:\n";
    myclock2.showTime();

    // myclock2.showTime();
 }

Clock::Clock() {
    hr = 10;
    min = 10;
    sec = 0;
    std::cout << "Clock has been created\n";
}

// Clock::Clock(const Clock &obj) {
//     hr = obj.hr;
//     min = obj.min;
//     sec = obj.sec;
// }

Clock::Clock(int hr, int min, int sec) {
    if (hr < 0) {
        this->hr = 0;
    } else if (hr > 23) {
        this->hr = 23;
    } else {
        this->hr = hr;
    }
    if (min < 0) {
        this->min = 0;
    } else if (min > 59) {
        this->min = 59;
    } else {
        this->min = min;
    }
    if (sec < 0) {
        this->sec = 0;
    } else if (sec > 59) {
        this->sec = 59;
    } else {
        this->sec = sec;
    }
    std::cout << "Clock has been created with parameterized constructor.\n";
}

 void Clock::showTime() const {
    std::cout << hr << ":" << min << ":" << sec << "\n";
 }

 void Clock::setHr(int a) {
    if (a < 0) {
        hr = 0;
    } else if (a > 23) {
        hr = 23;
    } else {
        hr = a;
    }
 }

 void Clock::setMin(int a) {
    if (a < 0) {
        min = 0;
    } else if (a > 59) {
        min = 59;
    } else {
        min = a;
    }
 }

 void Clock::setSec(int a) {
        if (a < 0) {
        sec = 0;
    } else if (a > 59) {
        sec = 59;
    } else {
        sec = a;
    }
 }

