#include "dataManager.h"
#include <iostream>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>

using namespace std;
namespace fs = std::filesystem;

void Table::CreateTB(string tb_name, string column, string data_type1, string column2, string data_type2, string data_of_type){
    //string path = program_path /= tb_name;
    if (fs::exists(program_path) && fs::is_regular_file(tb_name + ".csv")) {
        cout << "!Failed to create table " << tb_name << " because it already exists." << endl;
    } else {
        //cout << "program_path: " << program_path << "/" << endl;
        //program_path /= tb_name;
        string pathInital = program_path;
        string path = program_path /= tb_name;
        //cout << "path: " << path << endl;
        ofstream newTable(path + ".csv");
        cout << "Table " << tb_name << " created." << endl;
        newTable << column << "," << column2 << endl;
        newTable << data_type1 << "," << data_type2 << "(" <<data_of_type << ")"<< endl;
        newTable.close();
        program_path = pathInital;




    }
}

void Table::DropTB(string tb_name){
    //cout << "program_path: " << program_path << tb_name << ".csv"<< endl;
    //cout << program_path/=tb_name + ".csv" << endl;
    string pathInital = program_path;
    if (fs::exists(program_path/=tb_name + ".csv")) {
        fs::remove(program_path);
        
        cout << "Table " << tb_name << " deleted." << endl;

    } else {
        cout << "!Failed to drop database " << tb_name << " because it does not exist." << endl;
    }
    program_path = pathInital;
}

void Table::SelectTB(string tb_name){
    //cout << "program_path: " << program_path << endl;
    string pathInital = program_path;
    if (fs::exists(program_path/=tb_name + ".csv")) {
        string line;
        int length, currentLine = 1, varline = 2, columnline = 1, size = 5;

        string column[5], data_type[5]; 

        int count = 0;

        ifstream table(program_path);
        if (table.is_open()) {

            while (getline(table, line)) {
                for (char c : line) {
                    // If the character is a comma, increment the count
                    if (c == ',') {
                        count++;
                    }
                }
                if (currentLine == varline){
                    stringstream ss(line);
                    for (int i = 0; i < count; i++){
                    getline(ss, data_type[i], ',');
                    }

                } else if ( currentLine == columnline) {
                    //cout << line << endl;
                    stringstream ss(line);
                    for (int i = 0; i < count; i++){
                    getline(ss, column[i], ',');
                    }
                }

                currentLine++;
            }
        }
        for (int i = 0; i < count; i++){
            // Print the parsed values
            cout << column[i] << " " << data_type[i] << " | " ;
        }
        cout << endl;

        table.close();


    } else {
        cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    }
    program_path = pathInital;
}

void Table::AlterTB(string tb_name, string columnInput, string data_typeInput){  //adds column to table by coppying from old csv, appending to new csv, then replacing old csv.
    //cout << "program_path: " << program_path << endl;
    string pathInital = program_path;
    program_path_copy = program_path;
    //cout << "program_path_temp: " << pathTemp << endl;
    if (fs::exists(program_path/=tb_name + ".csv")) {
        string line;
        int length, currentLine = 1, varline = 2, columnline = 1, size = 5;

        string column[5], data_type[5]; 
        int count = 0;

        
        ifstream table(program_path);
        string pathTemp = program_path_copy/=tb_name + "_temp.csv";
        cout << "program_path_temp: " << pathTemp << endl;
        ofstream outfile(pathTemp, ios::app); //append to file ios::app      
        cout << program_path << endl;
        while (getline(table, line)) {
            for (char c : line) {
                // If the character is a comma, increment the count
                if (c == ',') {
                    count++;
                }
            }
            if (currentLine == varline){
                stringstream ss(line);
                data_typeInput = "," + data_typeInput;
                line += data_typeInput;
                outfile << line << endl;

            } else if ( currentLine == columnline) {
                //cout << line << endl;
                stringstream ss(line);
                columnInput = "," + columnInput;
                line += columnInput;
                outfile << line << endl;

            }

                currentLine++;
        }
        table.close();
        rename(program_path_copy.c_str(), program_path.c_str()); //replace file


        outfile.close();
        //outfile << columnInput << "," << data_typeInput << endl;

    } else {
        cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    }
    program_path = pathInital;
} 