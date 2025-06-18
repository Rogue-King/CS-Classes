#include <iostream>
#include <fstream>

using namespace std;

int main () {
    string extract; 
    string insert; 

    ifstream infile; 

    infile.open("meow.txt");
    while(infile){
    infile >> extract;
    cout << extract << endl;
    }
    infile.close(); 

    ofstream myfile;
    myfile.open("meow.txt");
    myfile << "type something: \n"; 

    myfile.close(); 
    return 0; 
}