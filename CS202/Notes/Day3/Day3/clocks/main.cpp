#include <iostream>
#include "clock.h"

int main() {
    Clock myclock(999,123,456);
    std::cout << "myClock:\n";
    Clock::showTime(myclock);
    myclock.setHr(12);
    myclock.setMin(25);
    myclock.setSec(9);
    Clock::showTime(myclock);

    Clock clocks[5];
    std::cout << "There are " << Clock::getCount() << " clocks.\n";
 }



