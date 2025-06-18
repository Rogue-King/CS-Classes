/**
 * @file main.cpp
 * @author Miguel Muniz
 * @brief main file for program, creates objects and calls functions. 
 * Also reads in user input or inputed file and parses them.
 * @version 0.5
 * @date 2023-03-05
 */

//libraries
#include "dataManager.h"
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <regex>
#include <fstream>

//namespaces
using namespace std;
namespace fs = std::filesystem; //namespace for file system

//object declarations
Database db;
Table tb;

//function prototypes
void parser(string userInput);

int main(int argc, char* argv[]){ //main function
    string userInput;
    if (argc == 2) { //checks if there are command line arguments
            string line;
            ifstream myfile (argv[1]);

            if (!myfile) {
                std::cerr << "Error: could not open file " << argv[1] << std::endl;
                return 1;
            
            } else if (myfile.is_open()) {
                while ( getline (myfile,line) ){ //reads in file line by line
                    //cout << "line: " << line << endl;
                    parser(line);
                }
                cout << "All Done." << endl;
                myfile.close();
            } else {
            cout << "Invalid command line arguments" << endl;
            } 
    
    } else if(argc == 1) { // is for manual input
    do{
        getline(cin, userInput);
        if( userInput != ".EXIT"){ //prevents .EXIT from being parsed
            parser(userInput);
        }
    }while(userInput != ".EXIT");
    } else {
            cout << "Invalid command line arguments" << endl;
    } 

    return 0;
}

void parser(string userInput){ //parses the user input and calls the appropriate function from object
    // Remove non-printable characters from userInput
    // Remove all whitespace from userInput
    //userInput.erase(remove(userInput.begin(), userInput.end(), '\r'), userInput.end());
    userInput.erase(remove(userInput.begin(), userInput.end(), '\n'), userInput.end());
    userInput.erase(remove(userInput.begin(), userInput.end(), '\t'), userInput.end());
    //cout << "userInput: " << userInput << endl;
    vector<string> tokens;
    stringstream ss(userInput);
    string token;

    while (getline(ss, token, ' ')) { // split string by spaces
    if (token.empty()) { // skip empty tokens
        continue;
    }
    token.erase(remove_if(token.begin(), token.end(), [](char c){ return !isprint(c); }), token.end()); // remove non-printable characters
    tokens.push_back(token); // add token to vector
    }

    if (tokens[0] == "CREATE") {
        if(tokens.size() == 3 && tokens[1] == "DATABASE"){
            string database_name = tokens[2];
            database_name.erase(remove(database_name.begin(), database_name.end(), ';'), database_name.end()); //remove ; from string
            db.CreateDB(database_name);
        } else if (tokens[1] == "TABLE"){ // Need to fix so that columns and datatypes are arrays.
            string table_name = tokens[2];
            //strings for columns and datatypes
            string column;
            string data_type1;
            string column2;
            string data_type2;
            string data_of_type;

            //assign values to strings
            column = tokens[3];
            data_type1 = tokens[4];
            column2 = tokens[5];
            data_type2 = tokens[6];
            data_of_type = data_type2;

            //remove characters from strings
            column.erase(remove(column.begin(), column.end(), '('), column.end()); //remove A from string
            data_type1.erase(remove(data_type1.begin(), data_type1.end(), ','), data_type1.end());
            data_type2.erase(remove(data_type2.begin(), data_type2.end(), '('), data_type2.end());
            data_type2.erase(remove(data_type2.begin(), data_type2.end(), ')'), data_type2.end());
            data_type2.erase(remove(data_type2.begin(), data_type2.end(), ';'), data_type2.end());

            int j = 0;
            int data_size = data_type2.size();
            for (int i = 0; i < data_size; i++) { // Store only valid characters of data_type2
                if ((data_type2[i] >= 'A' && data_type2[i] <= 'Z') ||
                    (data_type2[i] >='a' && data_type2[i] <= 'z'))
                {
                    data_type2[j] = data_type2[i];
                    j++;
                }
            }

            data_of_type = std::regex_replace(data_of_type, std::regex("[^0-9]*([0-9]+).*"), std::string("$1")); //extracts the number from the string
            tb.CreateTB(table_name, column, data_type1, column2, data_type2.substr(0, j), data_of_type); //substr(0, j) removes the extra characters from data_type2
        }

    } else if (tokens.size() == 3 && tokens[0] == "DROP"){ //removes database or table
         if(tokens[1] == "DATABASE"){
            string database_name = tokens[2];
            database_name.erase(remove(database_name.begin(), database_name.end(), ';'), database_name.end());
            db.DropDB(database_name);

        } else if (tokens[1] == "TABLE"){
            string table_name = tokens[2];
            table_name.erase(remove(table_name.begin(), table_name.end(), ';'), table_name.end());

            tb.DropTB(table_name);
        }

    } else if (tokens.size() == 2 && tokens[0] == "USE"){ //Changes file path read by tables
        string database_name = tokens[1];
        database_name.erase(remove(database_name.begin(), database_name.end(), ';'), database_name.end());
        db.UseDB(database_name);

        
    } else if (tokens.size() == 4 && tokens[0] == "SELECT"){ 
        if (tokens[1] == "*"){
            if (tokens[2] == "FROM"){
                string table_name = tokens[3];
                table_name.erase(remove(table_name.begin(), table_name.end(), ';'), table_name.end());
                tb.SelectTB(table_name);
            }
        }
    } else if (tokens.size() == 6 && tokens[0] == "ALTER"){ 
        if(tokens[1] == "TABLE"){ //Alters table
            string table_name = tokens[2]; //grabs table name
            if(tokens[3] == "ADD"){ //Adds new column and new data type to table
                string column;
                string data_type;

                column = tokens[4];
                data_type = tokens[5];

                data_type.erase(remove(data_type.begin(), data_type.end(), ';'), data_type.end());
                
                tb.AppendTB(table_name, column, data_type);
            }
        }

    } else if (tokens[0] == "--"  ||  tokens[0].find("--") || tokens[0].substr(0, 2) == "--" ){ //checks for comments
        //do nothing

    } else if (tokens[0] == ".EXIT"){ 
        exit(0); //exit program
    }else {
        cout << "Invalid input" << endl;
        //cout << "InvalidOut: " << tokens[0] << endl;
    }  
    
}