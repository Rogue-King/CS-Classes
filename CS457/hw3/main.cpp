/**
 * @file main.cpp
 * @author Miguel Muniz
 * @brief main file for program, creates objects and calls functions. 
 * Also reads in user input or inputed file and parses them.
 * @version 3.0
 * @date 2023-04-24
 */

//libraries
#include "SQLManager.h"
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
DataManager dataM;

//function prototypes
void parser(string userInput);

int main(int argc, char* argv[]){ //main function
    string userInput;
    if (argc == 2) { //checks if there are command line arguments
            string line, input;
            //size_t pos;
            ifstream myfile (argv[1]);

            if (!myfile) {
                std::cerr << "Error: could not open file " << argv[1] << std::endl;
                return 1;
            
            } else if (myfile.is_open()) {
                while ( getline (myfile,line) ){ //reads in file line by line
  
                    // Replace any newline characters with spaces
                    line.erase(std::remove(line.begin(), line.end(), '\r'), line.end());
                    if (line.empty()) {
                        continue;
                    } else if (line.find("--") != std::string::npos) {
                        continue;
                    } else if (line.find(';') != std::string::npos) {
                        input += line;
                        parser(input);
                        // cout << "semi: " << input << endl;
                        input.clear();
                    } else if (line.find('\n') == std::string::npos) {
                        //input += line;
                         line.erase(std::remove(line.begin(), line.end(), '\r'), line.end());
                        replace(line.begin(), line.end(), '\n', ' ');
                        //cout << "newline: " << line << endl;
                        input += line;
                        continue;
                    }
                    //cout << input << endl;
                    
                }
                //cout << input << endl;
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
    //userInput.erase(remove(userInput.begin(), userInput.end(), '\n'), userInput.end());
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

    if (tokens[0] == "CREATE" || tokens[0] == "create") {
        if(tokens.size() == 3 && tokens[1] == "DATABASE"){
            string database_name = tokens[2];
            database_name.erase(remove(database_name.begin(), database_name.end(), ';'), database_name.end()); //remove ; from string
            db.CreateDB(database_name);
        } else if (tokens[1] == "TABLE" || tokens[1] == "table"){ // Need to fix so that columns and datatypes are arrays.
            //string table_name = tokens[2];
            string table_name = tokens[2].substr(0, tokens[2].find("("));

            //grabs the id column if next to parentheses
            size_t start_pos = tokens[2].find_first_of("(");
            string sub_Fstr = tokens[2].substr(start_pos + 1);
            size_t end_pos = sub_str.find_first_of(" ,)");
            string emp_id_str = sub_str.substr(0, end_pos);
            //cout << "Employee ID: " << emp_id_str << std::endl;
            //cout << "sub_str: " << sub_str << endl;
            string data_type;
            size_t pos, values_pos ,semi_pos;
            //cout << "meow" << endl
            data_type = emp_id_str + " ";
            //finds the position of the first ( and ) and removes them but not for var char
            for (unsigned int i = 3; i < tokens.size(); i++){
                pos = tokens[i].find("varchar");
                values_pos = tokens[i].find("(");
                semi_pos = tokens[i].find(")");
                if (pos != string::npos) {
                    //cout << "meow" << endl;
                    tokens[i] = tokens[i].erase(token.size() - 2, 2);
                    data_type += tokens[i] + " ";
                } else if (values_pos != string::npos){
                    //cout << "test: " << tokens[i] << endl;
                    data_type += tokens[i] + " ";
                    data_type.erase(remove(data_type.begin(), data_type.end(), '('), data_type.end());
                    
                } else if (semi_pos != string::npos){
                    //cout << "test: " << tokens[i] << endl;
                    tokens[i].erase(remove(tokens[i].begin(), tokens[i].end(), ')'), tokens[i].end());
                    tokens[i].erase(remove(tokens[i].begin(), tokens[i].end(), ';'), tokens[i].end());
                    data_type += tokens[i] + " ";
                } else {
                    data_type += tokens[i] + " ";
                }
            }


            //cout << "tb.CreateTB--data_type: " << data_type << endl;

            tb.CreateTB(table_name, data_type);
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

        
    } else if ((tokens[0] == "SELECT" || tokens[0] == "select")){ 
        if (tokens[1] == "*"){
            if (tokens[2] == "FROM" || tokens[2] == "from"){
                if (tokens.size() > 3){
                    vector<string> table_name;
                    vector<string> id;
                    string target1, target2;
                    size_t from, comma, join;
                    bool inner_join = false, outer_join = false;
                    //size_t pos = tokens.find(",");
                    for(unsigned int i = 0; i < tokens.size(); i++){
                        //cout << "i: " << i << endl; 
                        from = tokens[i].find("from");
                        comma = tokens[i].find(",");
                        join = tokens[i].find("join");

                        if(from != string::npos){
                            table_name.push_back(tokens[i+1]);
                            //cout << "table_name: " << tokens[i+1] << endl;
                            string comma_remove = tokens[i+2];
                            comma_remove.erase(remove(comma_remove.begin(), comma_remove.end(), ','), comma_remove.end());
                            id.push_back(comma_remove);
                            //cout << "id: " << tokens[i+2] << endl;

                        } else if (comma != string::npos){
                            table_name.push_back(tokens[i+1]);
                            //cout << "table_name: " << tokens[i+1] << endl;

                            id.push_back(tokens[i+2]);
                            //cout << "id: " << tokens[i+2] << endl;
                        } else if (join != string::npos){
                            table_name.push_back(tokens[i+1]);
                            //cout << "table_name: " << tokens[i+1] << endl;

                            id.push_back(tokens[i+2]);
                            //cout << "id: " << tokens[i+2] << endl;
                        }
                        
                        if (tokens[i] == "inner" && tokens[i+1] == "join"){
                            inner_join = true;
                            //cout << "inner join" << endl;
                        } else if (tokens[i] == "left" && tokens[i+1] == "outer" && tokens[i+2] == "join"){
                            outer_join = true;
                            //cout << "outer join" << endl;
                        }
                        if (tokens[i] == "WHERE" || tokens[i] == "where" || tokens[i] == "ON" || tokens[i] == "on"){
                            target1 = tokens[i+1];
                            target2= tokens[i+3];

                            //cout << "target1: " << target1 << "; target2: " << target2 << endl;
                        
                        }
                    }

                    //cout << "inner_join: " << inner_join << endl;
                    //cout << "outer_join: " << outer_join << endl;

                    //boolean logic to determine which join to use
                    if (inner_join == false && outer_join == false){//if no join is specified, then do a inner join
                        inner_join = true;
                    } 
                    if (inner_join == true){
                        dataM.innerJoin(table_name, id, target1, target2);
                        //cout << "inner_join_true" << endl;
                    } else if(outer_join == true){
                        dataM.outerJoin(table_name, id, target1, target2);
                        //cout << "outer_join" << endl;
                    }
                    
                    // //write a for loop that interates through the table_name vector and prints out all elements
                    // for (unsigned int i = 0; i < table_name.size(); i++){
                    //     cout << "table_name: " << table_name[i] << endl;
                    //     cout << "id: " << id[i] << endl;
                    // }

                    //dataM.innerJoin(table_name, id, target1, target2);
                

                } else if (tokens.size() < 4) {
                string table_name = tokens[3];
                table_name.erase(remove(table_name.begin(), table_name.end(), ';'), table_name.end());
                tb.SelectTB(table_name);
                }
                
            } else {
                //dataM.SelectAllData();
            }
        } else { //selects specific columns

            string table_name;
            string column;
            string target_column;
            string opperator;
            string data_type;
            for(unsigned int i = 0; i < tokens.size(); i++){
                if(tokens[i] == "SELECT" || tokens[i] == "select"){
                    for (/*unsigned int */ i = 1; i < tokens.size(); i++){
                        if(tokens[i] == "FROM" || tokens[i] == "from"){
                           // i = j;
                            break;
                        } else {
                            column += tokens[i] + " ";
                            //cout << "column: " << column << endl;

                        }
                    }
                    //i++;
                    column.erase(remove(column.begin(), column.end(), ','), column.end());
                    //cout << "i: " << i << endl;
                    //i += 1;
                    if(tokens[i] == "FROM" || tokens[i] == "from"){
                        table_name = tokens[i+1];
                        
                        //cout << "table_name: " << table_name << endl;

                        i += 2;
                        //cout << "i: " << i << endl; 
                        if (tokens[i] == "WHERE" || tokens[i] == "where"){
                            target_column = tokens[i+1];
                            //cout << "target_column: " << target_column << endl;
                            opperator = tokens[i+2];
                            //cout << "opperator: " << opperator << endl;
                            data_type = tokens[i+3];
                            //cout << "data_type: " << data_type << endl;
                        }
                    }
                }
            }
                //cout << column << " " << table_name << " " << target_column << " "<< opperator << " " << data_type << endl;
                dataM.SelectData(table_name, column, target_column, opperator, data_type);
                
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
    } else if (tokens[0] == "insert"){ //inserts data into table
            string table_name = tokens[2];
            string data_type;
            //size_t pos = data_type.find("values");
            
            

            if (tokens.size() >= 3){ //if there are more than 3 tokens, then there are more than 1 column
                for (unsigned int i = 3; i < tokens.size(); i++){
                    data_type += tokens[i];
                }
            }


            //remove characters from strings
            data_type.erase(remove(data_type.begin(), data_type.end(), '('), data_type.end()); //remove A from string

            size_t pos = data_type.find("values");
            //finds the position of "values" in the string
            if (pos != string::npos) { // if "values" is found
                data_type.erase(pos, 6); // erase the 6 characters starting from "values"
                //cout << "meow" << endl;
            }
            //cout << "values-data_type: " << data_type << endl;
            //data_type.erase(remove(data_type.begin(), data_type.end(), ','), data_type.end());
            data_type.erase(remove(data_type.begin(), data_type.end(), '('), data_type.end());
            data_type.erase(remove(data_type.begin(), data_type.end(), ')'), data_type.end());
            data_type.erase(remove(data_type.begin(), data_type.end(), ';'), data_type.end());
            //data_type.erase(remove(data_type.begin(), data_type.end(), "'"), data_type.end());


            // //filters out unwanted characters
            // pos = data_type.find("\'");
            // size_t poscom = data_type.find(",");
            // //this is trying to find the row number
            // if (pos != std::string::npos) {
            //     // Extract the substring before the colon
            //     //data_type = data_type.substr(0, pos);
            //     data_type.replace(pos, 1, " ");
            // } else if (poscom != std::string::npos){
            //     //data_type = data_type.substr(0, poscom);
            //     data_type.replace(poscom, 1, ", ");
            // }
            
            //cout << "test-data_type: " << data_type << endl;

            dataM.InsertData(table_name, data_type);
            
    } else if (tokens[0] == "update"){ //updates data in table
            /*
            for (unsigned int i = 0; i < tokens.size(); i++){
                cout << "update: " << tokens[i] << endl;
            }
            */
            //cout << "update" << endl;
            string table_name = tokens[1];
            table_name.erase(remove(table_name.begin(), table_name.end(), ';'), table_name.end());
            if (tokens[2] == "set"){
                string setColumn = tokens[3];
                string opperator = tokens[4];
                    string value = tokens[5];
                    if (tokens[6] == "where"){
                        string targetColumn = tokens[7];
                        string columnName = tokens[9];
                        columnName.erase(remove(columnName.begin(), columnName.end(), ';'), columnName.end());

                        size_t start_pos = columnName.find("'");
                        size_t end_pos = columnName.find("'", start_pos + 1);
                        if (start_pos != std::string::npos && end_pos != std::string::npos) {
                            string columnNameStr = columnName.substr(start_pos + 1, end_pos - start_pos - 1);
                            columnName = columnNameStr;
                            //cout << "data_target: " << columnName << endl;
                        }

                        start_pos = value.find("'");
                        end_pos = value.find("'", start_pos + 1);
                        if (start_pos != std::string::npos && end_pos != std::string::npos) {
                            string valueStr = value.substr(start_pos + 1, end_pos - start_pos - 1);
                            value = valueStr;
                            //cout << "data_target: " << columnName << endl;
                        }


                        dataM.UpdateData(table_name, setColumn, value, targetColumn, columnName);
                    }  
                
            }

    } else if (tokens[0] == "delete"){ // deletes data from table
        if (tokens[1] == "from"){
            string table_name = tokens[2];
            table_name.erase(remove(table_name.begin(), table_name.end(), ';'), table_name.end());
        
            if (tokens[3] == "where"){
                string columnName = tokens[4];
                string opperator = tokens[5];
                string value = tokens[6];

                size_t start_pos = value.find("'");
                size_t end_pos = value.find("'", start_pos + 1);
                if (start_pos != std::string::npos && end_pos != std::string::npos) {
                    string valueStr = value.substr(start_pos + 1, end_pos - start_pos - 1);
                    value = valueStr;
                    //cout << "data_target: " << columnName << endl;
                }




                value.erase(remove(value.begin(), value.end(), ';'), value.end());
                dataM.DeleteData(table_name, opperator, columnName, value);
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