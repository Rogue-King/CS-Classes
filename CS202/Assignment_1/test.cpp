#include <iostream>
#include <string>
#include <iomanip>
#include <fstream>


using namespace std;

int main(int argc, char* argv[]) {
    int cards[10];     ///< Array to store up to 10 cards.
    ifstream infile;    ///< Input file stream.
    string temp_str;    ///< Used for storing a string from file stream.
    int temp_int;       ///< Used for storing an integer from file stream.
    int counter = 0;    ///< Counts the number of cards read from the file.

    
    infile.open(argv[1]);
    if (infile.is_open() && argc == 2){ 
    while(true){
        infile >> temp_str;
        infile >> temp_int;
        infile >> temp_int;
        cards[counter]= temp_str;
        cards[counter] = temp_int;
        cards[counter] temp_int;


        counter ++;
        //cout << counter << "\n";
        if(infile.eof()){
            break; 
        }
    }
    } else if (argc != 2) {
        cout << "ERROR: Incorrect usage.\n";
        cout << "./a.out <filename>\n"; 
        return -1;
    }else if (!infile.is_open()){
        cout << "ERROR: Could not open file: " << argv[1] << "\n";
        return -1;

    }
    
    infile.close();
}


    /*
        YOUR CODE HERE

        File must be passed in as a parameter to the program. If the number
        of parameters are incorrect throw an error and return -1. If the file
        does not exist or cannot be opened, throw an error and return -1.

        Read the name, value, and energy cost of the card, and store
        it in the cards[10] array. Make sure to increment the counter
        after each entry. You can use the temp_int and temp_str variables
        for temporary storage to call the setName and setValue functions.
    */
    