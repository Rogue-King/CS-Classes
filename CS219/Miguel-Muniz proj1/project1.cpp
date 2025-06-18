#include <iostream>
#include <cstdint>
#include <string>
#include <fstream>

using namespace std; 

int main(int argc, char* argv[]){
    ifstream infile; // file read
    string operatorId; 
    int counter;
    uint32_t hex1, hex2;

    infile.open(argv[1]); // opens file
    if (infile.is_open() && argc == 2){ // argument handeling 
    while(true){
        // read file and input into variables
        infile >> operatorId;
        infile >> hex >> hex1;
        infile >> hex >> hex2;

        if (operatorId == "ADD") { // condition for operation
            if (hex1 > 99999999 || hex2 > 99999999){// condition to handle overflow
            cout << operatorId << "   0x" << hex1 << "   0x" << hex2 << ": " << hex << "   0x" << hex1 + hex2 << "   *Overflow" << endl;
            } else { // if overflow is not found
            cout << operatorId << "   0x" << hex1 << "   0x" << hex2 << ": " << hex << "   0x" << hex1 + hex2 << endl;
            }
        }

        if(infile.eof()){// finds file end
            break; 
        }
    }
    } else if (argc != 2) { // rest of argument handeling
        cout << "ERROR: Incorrect usage.\n";
        cout << "./a.out <filename>\n"; 
        return -1;
    }else if (!infile.is_open()){
        cout << "ERROR: Could not open file: " << argv[1] << "\n";
        return -1;

    }
    infile.close(); // close file
    return 0;
}

