#include <iostream>
#include "clock.h"


int Clock::clockCount = 0;

Clock::Clock(const Clock &obj) {
    hr = obj.hr;
    min = obj.min;
    sec = obj.sec;
    clockCount += 1;
}

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
    clockCount += 1;
}

 void Clock::showTime(Clock obj) {
    std::cout << obj.hr << ":" << obj.min << ":" << obj.sec << "\n";
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