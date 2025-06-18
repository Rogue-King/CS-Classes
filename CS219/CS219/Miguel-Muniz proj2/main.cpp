#include <iostream>
#include <cstdint>
#include <string>
#include <fstream>

using namespace std; 

int main(int argc, char* argv[]){
    ifstream infile; // file read
    ofstream output("Programming-Project-2-output.txt"); 
    string operatorID; 
    int counter, rotate;
    uint32_t hex1, hex2;
    uint64_t ASRhex;

    infile.open(argv[1]); // opens file
    if (infile.is_open() && argc == 2){ // argument handeling 
    while(true){
        cout << hex1 << endl;
        infile >> operatorID;
        if(operatorID == "ASR"){
            infile >> hex >> ASRhex; 
            infile >> rotate;
        } else if (operatorID == "LSR" || operatorID == "LSL"){
            infile >> hex >> hex1; 
            infile >> rotate;
        }else if (operatorID == "NOT"){
            infile >> hex >> hex1;
        } else {
        infile >> hex >> hex1;
        infile >> hex >> hex2;
        }

        if (operatorID == "ADD") { // condition for operation

            output <<  operatorID << "   0x" << hex1 << "   0x" << hex2 << ": " << hex << "   0x" << hex1 + hex2 << endl;
            
        }
        if (operatorID == "AND") { // condition for operation

            output << operatorID << "   0x" << hex1 << "   0x" << hex2 << ": " << hex << "   0x" << (hex1 & hex2) << endl;
            
        }
        if (operatorID == "ASR") { // condition for operation
            
            int ASRout;
            ASRout = ASRhex;
            for(int i = 0; i < rotate; i++){
                ASRout/2;
                i++;
            }
            
            output << operatorID << "   0x" << ASRhex << "   " << rotate << ": " << hex << "   0x" << (ASRout >> rotate) << endl;
            
        }
        if (operatorID == "LSR") { // condition for operation

            output << operatorID << "   0x" << hex1 << "   " << rotate << ": " << hex << "   0x" << (hex1 >> rotate) << endl;
            
        }
        if (operatorID == "LSL") { // condition for operation

            output << operatorID << "   0x" << hex1 << "   " << rotate << ": " << hex << "   0x" << (hex1 << rotate) << endl;
            
        }
        if (operatorID == "NOT") { // condition for operation

            output << operatorID << "   0x" << hex1 << ": " << hex << "   0x" << (~hex1) << endl;
            
        }
        if (operatorID == "ORR") { // condition for operation

            output << operatorID << "   0x" << hex1 << "   0x" << hex2 << ": " << hex << "   0x" << (hex1 | hex2) << endl;
            
        }
        if (operatorID == "SUB") { // condition for operation

            output << operatorID << "   0x" << hex1 << "   0x" << hex2 << ": " << hex << "   0x" << hex1 + (~hex2 + 1) << endl;
            
        }if (operatorID == "XOR") { // condition for operation


            output << operatorID << "   0x" << hex1 << "   0x" << hex2 << ": " << hex << "   0x" << (hex1 ^ hex2) << endl;
            
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