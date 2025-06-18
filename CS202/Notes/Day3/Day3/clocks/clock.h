#ifndef CLOCK_H     // Header Guard
#define CLOCK_H

class Clock {
public:
    Clock() : hr(10), min(10), sec(0) { clockCount += 1; }
    Clock(int hr, int min, int sec); 
    ~Clock() { clockCount -= 1; };
    Clock(const Clock &obj);
    static void showTime(Clock obj);
    void setHr(int);
    void setMin(int);
    void setSec(int);
    int getSec() const { return sec; }
    int getMin() const { return min; }
    int getHr() const { return hr; }
    static int getCount() { return clockCount; }

private:
    int hr;
    int min;
    int sec;
    static int clockCount;
};

#endif