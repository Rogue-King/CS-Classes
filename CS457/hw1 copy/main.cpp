#include "dataManager.h"
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include <regex>

using namespace std;
namespace fs = std::filesystem;

//object declarations
Database db;
Table tb;

//function prototypes
void parser(string userInput);

int main(int argc, char* argv[]){
    string userInput;
    if (argc > 1) { //checks if there are command line arguments
        if (argv[1] == "<") { 
            string line;
            cout << argv[1] << endl;
            ifstream myfile (argv[1]);
            if (myfile.is_open()) 
            {
                while ( getline (myfile,line) )
                {
                    stringstream ss(line);
                    cout << line << endl;
                    parser(line);
                }
                myfile.close();
            }
        
        } else {
            cout << "Invalid command line arguments" << endl;
        } 
    
    } else {
    do{
        getline(cin, userInput);
        if( userInput != ".EXIT"){ //prevents .EXIT from being parsed
            parser(userInput);
        }
    }while(userInput != ".EXIT");
    }

    return 0;
}

void parser(string userInput){
    vector<string> tokens;
    stringstream ss(userInput);
    string token;

    while (getline(ss, token, ' ')) {
        tokens.push_back(token);
    }

    if (tokens[0] == "CREATE") {
        if(tokens.size() == 3 && tokens[1] == "DATABASE"){
            string database_name = tokens[2];
            //database_name.erase(remove(database_name.begin(), database_name.end(), ';'), database_name.end());
            //cout << "Creating Database " << database_name << endl;
             database_name.erase(remove(database_name.begin(), database_name.end(), ';'), database_name.end());
            db.CreateDB(database_name);
             // Execute code to create the database with the given name
        } else if (tokens[1] == "TABLE"){
            string table_name = tokens[2];
            string column;
            string data_type1;
            string column2;
            string data_type2;
            string data_of_type;

            column = tokens[3];
            data_type1 = tokens[4];
            column2 = tokens[5];
            data_type2 = tokens[6];
            data_of_type = data_type2;

            column.erase(remove(column.begin(), column.end(), '('), column.end()); //remove A from string
            data_type1.erase(remove(data_type1.begin(), data_type1.end(), ','), data_type1.end());
            data_type2.erase(remove(data_type2.begin(), data_type2.end(), '('), data_type2.end());
            data_type2.erase(remove(data_type2.begin(), data_type2.end(), ')'), data_type2.end());
            data_type2.erase(remove(data_type2.begin(), data_type2.end(), ';'), data_type2.end());

            int j = 0;
            for (int i = 0; i < data_type2.size(); i++) {
                
                // Store only valid characters
                if ((data_type2[i] >= 'A' && data_type2[i] <= 'Z') ||
                    (data_type2[i] >='a' && data_type2[i] <= 'z'))
                {
                    data_type2[j] = data_type2[i];
                    j++;
                }
            }
            //cout << "Tokens 6: " << data_type2.substr(0, j)<< endl;

            data_of_type = std::regex_replace(data_of_type, std::regex("[^0-9]*([0-9]+).*"), std::string("$1")); //extracts the number from the string
            //cout << "Tokens data: " << data_of_type  << endl;
            tb.CreateTB(table_name, column, data_type1, column2, data_type2.substr(0, j), data_of_type);
        }
        
            // Execute code to create the table with the given name

    } else if (tokens.size() == 3 && tokens[0] == "DROP"){
         if(tokens[1] == "DATABASE"){
            string database_name = tokens[2];
            database_name.erase(remove(database_name.begin(), database_name.end(), ';'), database_name.end());
            //cout << "Database " << database_name << " deleted." << endl;
             // Execute code to delete the database with the given name
             db.DropDB(database_name);
        } else if (tokens[1] == "TABLE"){
            string table_name = tokens[2];
            table_name.erase(remove(table_name.begin(), table_name.end(), ';'), table_name.end());

            tb.DropTB(table_name);
            //cout << "Table " << table_name << " deleted." << endl;
            // Execute code to delete the table with the given name
        }
    } else if (tokens.size() == 2 && tokens[0] == "USE"){
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
        if(tokens[1] == "TABLE"){
            string table_name = tokens[2]; //grabs table name
            if(tokens[3] == "ADD"){
                string column;
                string data_type;

                column = tokens[4];
                data_type = tokens[5];

                data_type.erase(remove(data_type.begin(), data_type.end(), ';'), data_type.end());
                
                tb.AlterTB(table_name, column, data_type);
            }
        }

    } else if (tokens[0] == "--" ){
        //do nothing

    } else if (tokens[0] == ".EXIT"){
        exit(0);
    }else {
        cout << "Invalid input" << endl;
    }  
    
}