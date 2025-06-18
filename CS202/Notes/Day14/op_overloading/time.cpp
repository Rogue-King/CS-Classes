#include <iostream>

using namespace std;
class TimeType {
private:
    int hr;
    int min;
    int sec;
    void normalize();
public:
    TimeType(int = 0, int = 0, int = 0);
    TimeType(const TimeType &obj) : hr(obj.hr), min(obj.min), sec(obj.sec) {};
    friend ostream& operator << (ostream &op1, TimeType &op2);
    friend istream& operator >> (istream &op1, TimeType &op2);
    friend TimeType operator + (const TimeType &op1, const TimeType &op2);
    void operator = (const TimeType &op1);
};

int main() {
    TimeType time1;
    TimeType time2;
    TimeType time3;
    cout << "Enter time1 as \"hr min sec\"" << endl;
    cin >> time1;
    cout << "Enter time2 as \"hr min sec\"" << endl;
    cin >> time2;
    cout << "time1 = " << time1 << endl;
    cout << "time2 = " << time2 << endl;
    time3 = time2 + time1;
    cout << "time2 + time1 = " << time3 << endl;
}

void TimeType::normalize() {
    min = min + (sec/60);
    sec = sec % 60;
    hr = hr + (min/60);
    min = min % 60;
}

TimeType::TimeType(int h, int m, int s) : hr(h) {
    if (m < 0) {
        this->min = 0;
    } else if (m > 59) {
        this->min = 59;
    } else {
        this->min = m;
    }
    if (s < 0) {
        this->sec = 0;
    } else if (s > 59) {
        this->sec = 59;
    } else {
        this->sec = s;
    }
};

ostream& operator << (ostream &op1, TimeType &op2) {
    op1 << op2.hr << ":" << op2.min << ":" << op2.sec;
    return op1;
}

istream& operator >> (istream &op1, TimeType &op2) {
    op1 >> op2.hr >> op2.min >> op2.sec;
    return op1;
}

TimeType operator + (const TimeType &op1, const TimeType &op2) {
    TimeType result;
    result.hr = op1.hr + op2.hr;
    result.min = op1.min + op2.min;
    result.sec = op1.sec + op2.sec;
    result.normalize();
    return result;
}

void TimeType::operator = (const TimeType &op1) {
    this->hr = op1.hr;
    this->min = op1.min;
    this->sec = op1.sec;
}