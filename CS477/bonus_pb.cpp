#include <iostream>
#include <vector>
#include <algorithm>
#include <fstream>

using namespace std;

// Function to find the largest index j such that locations[j] <= locations[i] - 5
int p(int i, vector<int>& locations) {
    for (int j = i - 1; j >= 0; j--) {
        if (locations[j] <= locations[i] - 5) {
            return j;
        }
    }
    return -1;
}

// Function to compute the maximum total bonus
vector<int> computeMaxBonus(vector<int>& locations, vector<int>& bonuses) {
    int n = locations.size();
    vector<int> T(n + 1);
    T[0] = 0;

    for (int i = 1; i <= n; i++) {
        int pi = p(i - 1, locations);
        int bonus = (pi != -1) ? bonuses[i - 1] + T[pi + 1] : bonuses[i - 1];
        T[i] = max(T[i - 1], bonus);
    }

    return T;
}

int main() {
    vector<int> locations = {8, 10, 15, 22, 26};
    vector<int> bonuses = {15, 5, 25, 15, 5};

    vector<int> T = computeMaxBonus(locations, bonuses);

    ofstream outfile("output.txt");
    for (int i = 0; i < T.size(); i++) {
        outfile << "T[" << i << "] = " << T[i] << endl;
    }
    outfile << "Maximum total bonus = " << T.back() << endl;
    outfile.close();

    return 0;
}