/**
 * @file tabble.cpp
 * @author Miguel Muniz
 * @brief file for table.cpp contains the function definitions for the table class
 * @version 0.5
 * @date 2023-03-05
 */

#include "dataManager.h"
#include <iostream>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <string>

using namespace std;
namespace fs = std::filesystem;

void Table::CreateTB(string tb_name, string column, string data_type1, string column2, string data_type2, string data_of_type){
    //string path = program_path /= tb_name;
    string pathInital = program_path; //saves initial program path
    if (fs::exists(program_path) && fs::is_regular_file(tb_name + ".csv")) { //fix this
        cout << "!Failed to create table " << tb_name << " because it already exists." << endl;
    } else {
        //cout << "program_path: " << program_path << "/" << endl;
        //program_path /= tb_name;
        string path = program_path /= tb_name;
        //cout << "path: " << path << endl;
        ofstream newTable(path + ".csv");
        cout << "Table " << tb_name << " created." << endl;
        newTable << column << "," << column2 << endl; 
        newTable << data_type1 << "," << data_type2 << "(" <<data_of_type << ")"<< endl;
        newTable.close();
        program_path = pathInital; //resets program path to initial path
    }
}

void Table::DropTB(string tb_name){
    //cout << "program_path: " << program_path << tb_name << ".csv"<< endl;
    //cout << program_path/=tb_name + ".csv" << endl;
    string pathInital = program_path; //saves initial program path
    if (fs::exists(program_path/=tb_name + ".csv")) {
        fs::remove(program_path);
        
        cout << "Table " << tb_name << " deleted." << endl;

    } else {
        cout << "!Failed to drop table " << tb_name << " because it does not exist." << endl;
    }
    program_path = pathInital; //resets program path to initial path
}

void Table::SelectTB(string tb_name){
    //cout << "program_path: " << program_path << endl;
    string pathInital = program_path; //saves initial program path
    if (fs::exists(program_path/=tb_name + ".csv")) {
        int currentLine = 1, varline = 2, columnline = 1, size = 5, count = 1;; //initalized variables
        string line, column[size], data_type[size];

        ifstream table(program_path); //opens the file
        if (table.is_open()) {

            while (getline(table, line)) { //reads the file line by line
                for (char c : line) {
                    // If the character is a comma, increment the count
                    if (c == ',') {
                        count++;
                    }
                }
                if ( currentLine == columnline) { //grabs data from the first line of the csv
                    //cout << line << endl;
                    stringstream ss(line);
                    for (int i = 0; i < count; i++){
                    getline(ss, column[i], ',');
                    }
                } else  if (currentLine == varline){ //grabs data from the second line of the csv
                    stringstream ss(line);
                    for (int i = 0; i < count; i++){
                    getline(ss, data_type[i], ',');
                    }

                }
                currentLine++;
            }
            //cout << "count: " << count << endl;
            int i;
            for (i = 0; i < count -1; i++){
                // Print the parsed values
                
                //if (i == count -1){
                    //cout << column[i] << " " << data_type[i] << endl;
               // }
            
                cout << column[i] << " " << data_type[i];
                if (i != count -2){
                    cout << " | ";
                }
                //cout << " | " ;    
            }
            //cout << column[count-1] << " " << data_type[count-1] << endl;
            //cout << column[i] << " " << data_type[i] << endl;
            cout << endl;
            table.close();
        }

    } else {
        cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    }
    program_path = pathInital; //resets program path
}

void Table::AppendTB(string tb_name, string columnInput, string data_typeInput){  //adds column to table by coppying from old csv, appending to new csv, then replacing old csv.
    //cout << "program_path: " << program_path << endl;
    string pathInital = program_path; //saves initial program path
    program_path_copy = program_path; //saves initial program path to copy
    //cout << "program_path_temp: " << pathTemp << endl;
    if (fs::exists(program_path/=tb_name + ".csv")) {
        string line;
        int currentLine = 1, varline = 2, columnline = 1, size = 5;

        string column[size], data_type[size]; 
        int count = 0;

        
        ifstream table(program_path);
        string pathTemp = program_path_copy/=tb_name + "_temp.csv";
        //cout << "program_path_temp: " << pathTemp << endl;
        ofstream outfile(pathTemp, ios::app); //append to file ios::app      
        //cout << program_path << endl;
        while (getline(table, line)) {
            for (char c : line) {
                // If the character is a comma, increment the count
                if (c == ',') {
                    count++;
                }
            }
            if (currentLine == varline){ //grabs data from the second line of the csv
                stringstream ss(line);
                data_typeInput = "," + data_typeInput; //adds comma to the front of the data type
                line += data_typeInput; //adds data type to the end of the line
                outfile << line << endl; //writes to new csv

            } else if ( currentLine == columnline) { //grabs data from the first line of the csv
                //cout << line << endl;
                stringstream ss(line);
                columnInput = "," + columnInput; //adds comma to the front of the column name
                line += columnInput; //adds column name to the end of the line
                outfile << line << endl; //writes to new csv

            }

                currentLine++;
        }
        table.close();
        rename(program_path_copy.c_str(), program_path.c_str()); //replace file
        cout << "Table " << tb_name << " modified." << endl;

        outfile.close();

    } else {
        cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    }
    program_path = pathInital; //resets program path
} 