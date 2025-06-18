/**
 * @file tabble.cpp
 * @author Miguel Muniz
 * @brief file for table.cpp contains the function definitions for the table class
 * @version 4.0
 * @date 2023-05-15
 */

#include "SQLManager.h"
#include <iostream>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;
namespace fs = std::filesystem;

void Table::CreateTB(string tb_name, string data_type){
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
          

        newTable << data_type << endl;
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
    program_lock = pathInital +  "/" + tb_name + ".csv";
    if (fs::exists(program_path/=tb_name + ".csv")) {
        string line;
        ifstream table(program_path); //opens the file
        if (table.is_open()) {
        while (getline(table, line)) {
            stringstream ss(line);
            string field;
                while (getline(ss, field, ',')) {
                    cout << field << "|";
                }
                cout << endl;
        }
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
        int currentLine = 1;
        string combine;   
        ifstream table(program_path);
        string pathTemp = program_path_copy/=tb_name + "_temp.csv";
        //cout << "program_path_temp: " << pathTemp << endl;
        ofstream outfile(pathTemp, ios::app); //append to file ios::app      
        //cout << program_path << endl;
        while (getline(table, line)) {
            if (currentLine == 1){ //grabs data from the second line of the csv
                stringstream ss(line);
                combine = "," + columnInput + " " + data_typeInput;
                line += combine; //adds column name to the end of the line
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