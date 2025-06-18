/**
 * @file database.cpp
 * @author Miguel Muniz
 * @brief file for datamanage.cpp contains the function definitions for the datamanager class
 * @version 2.2
 * @date 2023-04-03
 */

#include "SQLManager.h"
#include <iostream>
#include <filesystem>
#include <sstream>
#include <string>
#include <fstream>
#include <algorithm>
#include <vector>

using namespace std;
namespace fs = std::filesystem;

// inserts tuples into a table
void DataManager::InsertData(string tb_name,string data_type){
    //cout << "program_path: " << program_path << endl;
    string pathInital = program_path; //saves initial program path
    if (TableChecker(tb_name) == true) {
        program_path/=tb_name + ".csv";
    //program_path_copy = program_path; //saves initial program path to copy
    //cout << "program_path_temp: " << pathTemp << endl;
    //if (fs::exists(program_path/=tb_name + ".csv")) {
        string line;
        int currentLine = 1, row;

        string combine;
        
        //filters out unwanted characters
        size_t pos = data_type.find("'");
        //this is trying to find the row number
        if (pos != std::string::npos) {
            // Extract the substring before the colon
            string rowStr = data_type.substr(0, pos);
            row = stoi(rowStr);
            //cout << "Result: " << row << endl;
        } else {
            cout << "Error: No row found in string" << endl;
        }

        //Fixes data_type string
        replace(data_type.begin(), data_type.end(), '\'', ',');
                for (std::string::iterator it = data_type.begin(); it != data_type.end(); ++it) {
                        if (*it == ',') {
                            it = data_type.insert(it + 1, ' ');
                        }
                }



        ifstream table(program_path);
        ofstream outfile(program_path, ios::app); //append to file ios::app      
        //cout << program_path << endl;
        while (getline(table, line)) {
            //cout << currentLine << endl;
            if (currentLine == row){ //if current line is the row to insert data  
                outfile << data_type;
                //cout << "out: " << data_type << endl;
            }
            
                currentLine++;
        }
        outfile << endl;
        table.close();
        recordsCount++;
        cout <<  "1 new record inserted." << endl;

        outfile.close();
    } else {
        cout << "!Failed to use table " << tb_name << " because it does not exist." << endl;
    }
    program_path = pathInital; //resets program path
}

//deletes data from a table
void DataManager::DeleteData(string tb_name, string opperator, string column, string data_type){
    string pathInital = program_path; //saves initial program path
    program_path_copy = program_path; //saves initial program path to copy

    //cout << "Column: " << column << endl;
    query(tb_name, opperator,  column, data_type);
    if (TableChecker(tb_name) == true) {
        program_path/=tb_name + ".csv";

    


    string line;
    //int currentLine = 1;
    string combine;   
    ifstream table(program_path);
    string pathTemp = program_path_copy/=tb_name + "_temp.csv";
    //cout << "program_path_temp: " << pathTemp << endl;
    ofstream outfile(pathTemp, ios::app); //append to file ios::app      
    //cout << program_path << endl;
    
    /*
    //cout << "DATAMAN: " << data[5][1] << endl;
    //cout << "pid_index: " << pid_index << endl;
    //cout << "DATAINIT: " << data[pid_index][ColumnIndex -1] << endl;
    */
    /*
    string header;
    getline(table, header);
    stringstream headerStream(header);
    string column_data;
    vector<string> columns;
    while (getline(headerStream, column_data, ',')) {
        columns.push_back(column_data);
    }


    
    int numColumns = columns.size();
    //cout << "numColumns: " << numColumns << endl;

    for (int i = 0; i < numColumns; i++) {
        //cout << "columns[i]: " << columns[i] << endl;
        if (columns[i].find(column) != string::npos) {
            ColumnIndex = i + 1;
            cout << "targetColumnIndex: " << ColumnIndex << endl;
            break;
        }
    }
    */
    /*
    cout << "ColumnIndex: " << ColumnIndex << endl;
    cout << "column " << column << endl;
    cout << "data_type " << data_type << endl;
    cout << "pid_index " << pid_index << endl;
    cout << "ColumnIndex:  " << ColumnIndex -1 << endl;
    */
    vector<vector<string>> new_data; //new data vector
    //for (size_t i = 0; i < data.size(); i++) {
    //const auto& row = data[i];
    //}
    //new_data = data;
    string rowers;
    int count = 0;
    // rower,data_num;
    /*
    if (opperator != "=") {
        for (unsigned int i = 0; i < data_type.length(); i++) {
        int data_type_int = (int)data_type[i];
        }
        for (unsigned int i = 0; i < rowers.length(); i++) {
        int rowers = (int)rowers[i];
        }
    }
    */

    
    //deletes target data from a table
    for (const auto& row : data) {
        //cout << "row[ColumnIndex - 1]" << row[ColumnIndex - 1] << endl;
        //cout << "pid_index: " << to_string(pid_index) << endl;
        //cout << "meow" << endl;
        if (row[ColumnIndex - 1] == " " + data_type && opperator == "=" ) {
            //cout << "row[ColumnIndex - 2]: " << row[ColumnIndex - 2] << endl;
            //cout << "pid_index: " << to_string(pid_index) << endl;
            //cout << "=" << endl;
            continue;
        
        } else if (count > 0 && opperator == ">") {
            cout << ">" << endl;
            
            for (unsigned int i = 0; i < data_type.length(); i++) {
                unsigned int data_type_int = (int)data_type[i];
            }
            for ( int i = 0; i < rowers.length(); i++) {
                unsigned int rowers = (int)rowers[i];
            }
            
            int data_num = stoi(data_type);
            cout << "data_num: " << data_num << endl;

            //cout << "meow" << endl;
            //cout << "rower: " << row[ColumnIndex] << endl;
            //int rower = stoi(row[ColumnIndex]);
            //cout << "rowers: " << rower << endl;
            //int rower;
            if (row.size() <= ColumnIndex) {
            // handle case where row doesn't have enough elements
            cout << "Row does not have enough elements." << endl;
            continue;
            }
            cout << "meow: "<< endl;
            int rower;
            try {
                rower = stoi(row[ColumnIndex]);
            } catch (const invalid_argument& e) {
                // handle invalid argument exception
                cout << "Invalid argument: " << e.what() << endl;
                continue;
            } catch (const out_of_range& e) {
                // handle out-of-range exception
                cout << "Out of range: " << e.what() << endl;
                continue;
            }
            //cout << "meow" << endl;
            cout << "rower: " << rower << endl;
            




            /*
            //rower = stoi(rowers);
           // data_num = stoi(data_type);
            //cout << ">" << endl;
            //cout << ">" << endl;
            //continue;
            
            if (rower > data_num && row[ColumnIndex - 2] == to_string(pid_index)) {
                //new_data.push_back(row);
                cout << ">" << endl;
                continue;
            }
            */
        } else {
            //cout << "meow" << endl;
            new_data.push_back(row);
        }
        count++;
    }

    //deletes the row with the data
    //prints data to csv

    //cout << "meow" << endl;
    for (const auto& row : new_data) {
        //cout << "meow" << endl;
        //cout << row.size() << endl;
        if (ColumnIndex - 1 < row.size()) {
            size_t i = 0;
            //cout << "cell:" << endl;
            for (const auto& cell : row) {
                outfile << cell << ",";
                //cout << cell << ",";
                if (i < row.size() - 1) {
                    //outfile << ", ";
                    //cout << row[i] << ", ";
                }
                i++;
            }
            outfile << endl;
            //cout << endl;
        }
    }
    data.clear();
    new_data.clear();
    table.close();
    rename(program_path_copy.c_str(), program_path.c_str()); //replace file
    //cout << "Table " << tb_name << " modified." << endl;

    outfile.close();

    } else {
        cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    }

    deleteCount++;
    cout << deleteCount << " records deleted." << endl;
    program_path = pathInital; //resets program path
}

//updates data in a table
void DataManager::UpdateData(string tb_name, string setColumn, string setValue, string targetColumn, string columnName){
    string pathInital = program_path; //saves initial program path
    program_path_copy = program_path; //saves initial program path to copy

    //cout << "Column: " << columnName << endl;
    query(tb_name, "=",  targetColumn, columnName);
    if (TableChecker(tb_name) == true) {
        program_path/=tb_name + ".csv";

    
    //setColumn = setColumn;
    //cout << "setColumn: " << setColumn << endl;
    //setValue = setValue;
    //cout << "value: " << value << endl;
    //cout << "targetColumn: " << targetColumn << endl;
    //targetColumn = targetColumn;
    //columnName = columnName;

    string line;
    //int currentLine = 1;
    string combine;   
    ifstream table(program_path);
    string pathTemp = program_path_copy/=tb_name + "_temp.csv";
    //cout << "program_path_temp: " << pathTemp << endl;
    ofstream outfile(pathTemp, ios::app); //append to file ios::app      
    //cout << program_path << endl;
    
    /*
    bool modified = false;
    for (auto& row : data) {
        for (auto& cell : row) {
            cout << "cell:  " << cell << endl;
            if (cell == " " + columnName) {
                cell = setValue;
                modified = true;
            }
        }
    }
    if (!modified) {
        cout << "No values were replaced" << endl;
    }
    */

    /*
    //cout << "DATAMAN: " << data[5][1] << endl;
    //cout << "pid_index: " << pid_index << endl;
    //cout << "DATAINIT: " << data[pid_index][ColumnIndex -1] << endl;
    */

    //grab column data
    string header;
    getline(table, header);
    stringstream headerStream(header);
    string column_data;
    vector<string> columns;
    while (getline(headerStream, column_data, ',')) {
        columns.push_back(column_data);
    }


    //gets coulumn size
    int numColumns = columns.size();
    //cout << "numColumns: " << numColumns << endl;

    //cout << "setColumn: " <<  setColumn << endl;

    //finds column index
    for (int i = 0; i < numColumns; i++) {
        //cout << "columns[i]: " << columns[i] << endl;
        if (columns[i].find(setColumn) != string::npos) {
            ColumnIndex = i + 1;
            //cout << "targetColumnIndex: " << ColumnIndex << endl;
            break;
        }
    }
    
    //cout << "setValue: " << setValue << endl;
    //cout << "ColumnIndex: " << ColumnIndex << endl;
    //cout << "setColumn " << setColumn << endl;
    //cout << "columnName " << columnName << endl;
    //cout << "targetColumn " << targetColumn << endl;

    //updates targets
    for (auto& row : data) {
        //cout << "row.size(): " << row.size() << endl;
        //cout << "row[ColumnIndex -1]: " << row[ColumnIndex -1] << endl;
        if (row[ColumnIndex -1] == " " + columnName && setColumn == targetColumn) {
            //cout << "row[ColumnIndex -1]: " << row[ColumnIndex -1] << endl;
            row[ColumnIndex -1] =  " " + setValue;
        } else if (row[ColumnIndex - 2] ==  " " +  columnName) { 
            row[ColumnIndex -1] =  " " + setValue;
        }
        //cout << "row[ColumnIndex -1]: " << row[ColumnIndex -1] << endl;
    }

    

    //data[pid_index][ColumnIndex -1] = " " + setValue;
    //cout << "DATA: " << data[pid_index][ColumnIndex -1] << endl;
    
    //prints data to csv
    numColumns -= 1;
    //cout << "OutnumColumns: " << numColumns << endl;
    for (const auto& row : data) {
        //cout << row.size() << endl;
        if (ColumnIndex - 1 < row.size()) {
            size_t i = 0;
            for (const auto& cell : row) {
                outfile << cell << ",";
                //cout << cell << ",";
                if (i < row.size() - 1) {
                    //outfile << ", ";
                    //cout << row[i] << ", ";
                }
                i++;
            }
            outfile << endl;
            //cout << endl;
        }
    }

    data.clear(); //clears data vector
    
    table.close();
    rename(program_path_copy.c_str(), program_path.c_str()); //replace file
    //cout << "Table " << tb_name << " modified." << endl;

    outfile.close();

    } else {
        cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    }

    updateCount++;
    cout << updateCount << " record modified." << endl;
    program_path = pathInital; //resets program path
}


void DataManager::selectData(string tb_name, string column, string opperator, string column_target, string data_type){
    string pathInital = program_path; //saves initial program path
    //cout << "Column: " << column << endl;
    query(tb_name, opperator, column , data_type);
    if (TableChecker(tb_name) == true) {
        program_path/=tb_name + ".csv";

        string line;
        //int currentLine = 1;
        string combine;   
        ifstream table(program_path);

        column_target = column_target;

        //cout << endl;
        //cout << "ColumnIndex: " << ColumnIndex << endl;
        //cout << "column " << column << endl;
        //cout << "data_type " << data_type << endl;
        //cout << "pid_index " << pid_index << endl;
        vector<vector<string>> new_data;
        string rowers;
        int  count;
        for (const auto& row : data) {
            /*
            //cout << "row[ColumnIndex - 1]" << row[ColumnIndex - 1] << endl;
            //cout << "pid_index: " << to_string(pid_index) << endl;

        for (unsigned int i = 0; i < row.size(); i++) {
            cout << "row[i]: " << row[i] << endl;
        }
        */
        //cout << "row[ColumnIndex - 2]: " << row[ColumnIndex - 3] << endl;
        if (row[ColumnIndex - 2] != " " + data_type && opperator == "!=" ) {
           // cout << "row[ColumnIndex - 2]: " << row[ColumnIndex - 2] << endl;
            //cout << "pid_index: " << to_string(pid_index) << endl;
            //cout << "!=" << endl;
            continue;
        
        } else {
            //cout << "meow" << endl;
            new_data.push_back(row);
        }
        count++;
    }

            for (const auto& row : new_data) {
            //cout << "meow" << endl;
            //cout << row.size() << endl;
            if (ColumnIndex - 1 < row.size()) {
                size_t i = 0;
                //cout << "cell:" << endl;
                for (const auto& cell : row) {
                    //outfile << cell << ",";
                    cout << cell << ",";
                    
                    if (i < row.size() - 1) {
                        //cout << row[i] << ", ";
                    }
                    i++;
                }
                cout << endl;
            }
        }
        data.clear();
        table.close();
    } else {
    cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    }
}




//checks if table exists
bool DataManager::TableChecker(string tb_name){
    //cout << "program_path: " << program_path << endl;
    string pathInitial = program_path; //saves initial program path
    //cout << "Path Initial: " << program_path << endl;
    if (fs::exists(program_path/=tb_name + ".csv")) {
        //cout << "Table " << tb_name << " exists." << endl;
        //cout << "Checker: " << program_path << endl;
        program_path = pathInitial;
        //cout << "Checker: " << program_path << endl;
        return true;
    } else {
        cout << "!Failed to select table: " << program_path << endl;
        cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
        program_path = pathInitial;
        return false;
    }
    program_path = pathInitial; //resets program path
    //cout << "Checker: " << program_path << endl;
    return 0;
}

//gets the index of the column
void DataManager::getColumnIndex(string tb_name,string column, string data_target, bool pathReset){
    string pathInitial = program_path; //saves initial program path
    if (TableChecker(tb_name) == true) {
        pathReset = pathReset;
        /*
        if(pathReset == true){
            program_path = program_path_copy;
            pathInitial = program_path;
            program_path/=tb_name + ".csv";
            pathReset = false;
        } else {
        program_path/=tb_name + ".csv";
        }
        */
        program_path/=tb_name + ".csv";
        ifstream table(program_path); //opens the file

        data_target = data_target;
        //adds a space to data_target to let it match with the csv file
        data_target = " " + data_target;

        // Read the header row to get the column names
        string header;
        getline(table, header);
        stringstream headerStream(header);
        string column_data;
        vector<string> columns;
        while (getline(headerStream, column_data, ',')) {
            columns.push_back(column_data);
        }

        // Count the number of columns
        int numColumns = columns.size();


        // Identify the coumn index
        for (int i = 0; i < numColumns; i++) {
            //cout << "columns[i]: " << columns[i] << endl;
            if (columns[i].find(column) != string::npos) {
                ColumnIndex = i + 1;
                //cout << "targetColumnIndex: " << ColumnIndex << endl;
                break;
            }
        }
        //cout << "columnIndex: " << ColumnIndex << endl;
        //cout << "Number of columns: " << numColumns << endl;
        /*
        // Check if the column was found
        if (ColumnIndex <) {
            cout << "Error: Could not find column with header " << endl;
            //return 1;
        }
        */
        
        table.close();
    }
    program_path = pathInitial; //saves initial program path
}


void DataManager::query(string tb_name, string opperator, string column, string data_target){
    string pathInitial = program_path; //saves initial program path
    getColumnIndex(tb_name, column, data_target,false);
    
    if (TableChecker(tb_name) == true) {
        program_path/=tb_name + ".csv";

        
        //auto data = read_csv(program_path);
        
        //cout << "query: " << program_path << endl;
        column = column;
        opperator = opperator;
        data_target = " " + data_target;
        ifstream table(program_path); //opens the file
        
        //vector<vector<string>> data;

        //is reading from the csv file and pushing it into a vector
        string line;
        while (getline(table, line)) {
            stringstream line_stream(line);
            string cell;
            vector<string> row;
            while (getline(line_stream, cell, ',')) {
                row.push_back(cell);
            }
            data.push_back(row);
        }


        //if(opperator == "="){

            //cout << "column: " << column << endl;
            //cout << "data_target: " << data_target << endl;
            //cout << "ColumnIndex: " << ColumnIndex << endl;

            //is checking the vector for the data_target
            for (const auto& row : data) {
                //cout << "row: " << row[ColumnIndex-1] << endl;
                if (row[ColumnIndex-1] == data_target) {
                    for (const auto& cell : row) {
                        if (cell == row[ColumnIndex-1]) {
                            //cout << "corrected: " << cell << endl;
                        }
                        if (cell == row[0]) {
                            //cout << "PID: " << cell << endl;
                            
                            pid_index = stoi(cell);
                            //cout << "pid_index: " << pid_index << endl;
                        }
                        //cout << "cell: " << cell << ", ";
                        //cout << "row_index: " << row_index << endl;
                        row_index++;
                    }
                    //cout << endl;
                }
            }
            
            //string search_value = "Gizmo";
            //string replace_value = "SuperGizmo";

            /*
            cout << "DATAMAN: " << data[5][1] << endl;
            cout << "pid_index: " << pid_index << endl;
            cout << "DATAINIT: " << data[pid_index][ColumnIndex -1] << endl;
            data[pid_index][ColumnIndex -1] = "Gizmo";
            cout << "DATA: " << data[pid_index][ColumnIndex -1] << endl;
            
            for (auto& cell : data[row_index]) {
                if (cell == search_value) {
                    cell = replace_value;
                }
            }
            */
           /*
            cout << "after update: ";
            for (const auto& row : data) {
                //cout << "row: " << row[ColumnIndex-1] << endl;
                for (const auto& cell : row) {
                    cout << cell << ", ";
                }
                cout << endl;
            }
            */
        //} else if (opperator == ">"){

        //}
        

    table.close();
   }
    
    

    program_path = pathInitial; //resets program path
}
