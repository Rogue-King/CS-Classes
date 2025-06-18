#include <iostream>
#include <cstdint>
#include <string>
#include <fstream>
#include<algorithm>

using namespace std;

int filter(string R);
void printRegister(uint32_t rArray[8]);

ifstream infile; // file read
ofstream output("Programming-Project-3-output.txt"); 

int main(int argc, char* argv[]){
    //R is the input string for the register. same with opp1, opp2, and ityper as input opperands
    string operatorID, R, opp1, opp2, iTyper; 
    //opp1V and opp2V are the converted opperands from string to integer
    int counter, Rv, opp1V, opp2V;
    //the rArray holds all the values in hex for the registers.  
    uint32_t iType, rArray[8] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0};

    infile.open(argv[1]); // opens file
    if (infile.is_open() && argc == 2){ // argument handeling 
    while(true){
        infile >> operatorID;
        infile >> R;
        output << operatorID << " " << R;
        if(operatorID == "MOV" || operatorID == "mov"){ //moves hex values into registers
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            //cout << R << endl;
            
            //Grabs Itype value
            infile >> iTyper; 
            output << " " << iTyper << endl;

            iTyper.erase(remove(iTyper.begin(), iTyper.end(), '#'), iTyper.end());
            iType = strtoul(iTyper.c_str(), NULL, 16); //converts string to hex
            
            //cout << "I: " <<  iType << endl;

            //Assigns the inputed register to the correct element in the array
            if(R == "R0" || R == "r0"){
                rArray[0] = iType;
                //cout << rArray[0] << endl;
            } else if(R == "R1" || R == "r1"){
                rArray[1] = iType;
                //cout << "R1: " <<rArray[1] << endl;
            } else if(R == "R2" || R == "r2"){
                rArray[2] = iType;
                //cout << rArray[2] << endl;
            } else if(R == "R3" || R == "r3"){
                rArray[3] = iType;
            } else if(R == "R4" || R == "r4"){
                rArray[4] = iType;
            } else if(R == "R5" || R == "r5"){
                rArray[5] = iType;
            } else if(R == "R6" || R == "r6"){
                rArray[6] = iType;
            } else if(R == "R7" || R == "r7"){
                rArray[7] = iType;
            }

            printRegister(rArray);

        }

       
        if (operatorID == "ASR" || operatorID == "asr") { // condition for operation
           
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl; 
            opp2.erase(remove(opp2.begin(), opp2.end(), '#'), opp2.end());

            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);
            
            for(int i = 0; i < opp2V; i++){
                rArray[opp1V]/2;
                i++;
            }
            //executes operation and assigns result to correct register.
            rArray[Rv] = (rArray[opp1V] >> opp2V);

            printRegister(rArray);
        }
        
        if (operatorID == "LSR" || operatorID == "lsr") { // condition for operation
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl; 
            opp2.erase(remove(opp2.begin(), opp2.end(), '#'), opp2.end());

            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);
            //executes operation and assigns result to correct register.
            rArray[Rv] = (rArray[opp1V] >> opp2V);

            printRegister(rArray);
        }
        
        if (operatorID == "LSL" || operatorID == "lsl") { // condition for operation
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl; 
            opp2.erase(remove(opp2.begin(), opp2.end(), '#'), opp2.end());
            
            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);
            //executes operation and assigns result to correct register.
            rArray[Rv] = (rArray[opp1V] << opp2V);

            printRegister(rArray);
        }

        /*
        if (operatorID == "NOT" || operatorID == "not") { // condition for operation
            infile >> hex >> hex1;

            output << operatorID << "   0x" << hex1 << ": " << hex << "   0x" << (~hex1) << endl;
            printRegister();
        }
        */

        if (operatorID == "ADD" || operatorID == "add") { // condition for operation
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl;

            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);

            //executes operation and assigns result to correct register.
            rArray[Rv] = rArray[opp1V] + rArray[opp2V]; 

            printRegister(rArray);
        }
        
        if (operatorID == "AND" || operatorID == "and") { // condition for operation

            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl;

            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);
            //executes operation and assigns result to correct register.
            rArray[Rv] = (rArray[opp1V] & rArray[opp2V]); 

            printRegister(rArray);
        }
        
        if (operatorID == "ORR" || operatorID == "orr") { // condition for operation
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl;

            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);
            //executes operation and assigns result to correct register.
            rArray[Rv] = (rArray[opp1V] | rArray[opp2V]); 

            printRegister(rArray);
        }
        
        if (operatorID == "SUB" || operatorID == "sub") { // condition for operation
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl;

            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);
            //executes operation and assigns result to correct register.
            rArray[Rv] = rArray[opp1V] - rArray[opp2V]; 

            printRegister(rArray);
        }
        
        if (operatorID == "XOR" || operatorID == "xor") { // condition for operation
            R.erase(remove(R.begin(), R.end(), ','), R.end());
            infile >> opp1;
            infile >> opp2;
            output << " " << opp1 << " " << opp2 << endl;

            //filters input values of opperators and opperands and converts to int
            Rv = filter(R);
            opp1V = filter(opp1);
            opp2V = filter(opp2);
            //executes operation and assigns result to correct register.
            rArray[Rv] = (rArray[opp1V] ^ rArray[opp2V]); 

            printRegister(rArray);
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

/// @brief filters inputed register to extract integer value
/// @param R inputed String value
/// @return string converted to int value
int filter(string R){
    int converted;
    R.erase(remove(R.begin(), R.end(), 'R'), R.end());
    R.erase(remove(R.begin(), R.end(), 'r'), R.end());
    R.erase(remove(R.begin(), R.end(), ','), R.end());
    //cout << "Test: " << R << endl;
    converted = stoi(R);
    return converted;
}
/// @brief updates the register values in output.txt
/// @param rArray input Array that holds register values
void printRegister(uint32_t rArray[8]){
    for (int i = 0; i < 8; i++){
        if(i == 7){
            output << "R" << i << ":0x" << hex << rArray[i] << endl;
        } else {
            output << "R" << i << ":0x" << hex << rArray[i] << "  ";
        }
    }
}