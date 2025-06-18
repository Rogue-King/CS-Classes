#include <iostream>
#include <vector>
#include <fstream>
#include <sstream>

using namespace std;

// Function to read the choices from the file
vector<int> readChoices(string filename) {
    ifstream infile(filename);
    string line;
    vector<int> R;

    while (getline(infile, line)) {
        istringstream iss(line);
        string temp;
        int r;
        while (iss >> temp) {
            if (istringstream(temp) >> r) {
                // Do nothing, just move to the next token
            }
        }
        R.push_back(r);
    }

    infile.close();
    return R;
}

// Function to print the IDs of the tables used in the flower arrangement
void printTableIDs(vector<int>& R, string filename) {
    ofstream outfile(filename);
    for (int i = R.size() - 1; i > 0; i--) {
        if (R[i] != R[i - 1]) {
            outfile << "Table " << R[i] << endl;
        }
    }
    outfile.close();
}

int main() {
    vector<int> R = readChoices("bonus_pc_out.txt");
    printTableIDs(R, "bonus_pd_out.txt");
    return 0;
}