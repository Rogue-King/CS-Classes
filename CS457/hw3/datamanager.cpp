/**
 * @file database.cpp
 * @author Miguel Muniz
 * @brief file for datamanage.cpp contains the function definitions for the datamanager class
 * @version 3.0
 * @date 2023-04-24
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
        int currentLine = 1;
        int num_rows = 0;
        
        replace(data_type.begin(), data_type.end(), '\'', ' ');
                for (std::string::iterator it = data_type.begin(); it != data_type.end(); ++it) {
                        if (*it == ',') {
                            it = data_type.insert(it + 1 , ' ');
                        }
                }

        ifstream file(program_path);
        if (file.is_open()) {
            while (getline(file, line)) {
                num_rows++;
            }
            file.close();
            //cout << "Number of rows: " << num_rows << endl;
        } else {
            cout << "Failed to open file." << endl;
        }
        // cout << "replaced-data_type: " << data_type << endl;
        string delimiter = ","; 
        ifstream table(program_path);
        ofstream outfile(program_path, ios::app); //append to file ios::app   
        //cout << program_path << endl;

        while (getline(table, line)) {
            //cout << "currentLine: " << currentLine << endl;
            if (num_rows == currentLine) { // if current line is the row to insert data
            outfile.seekp(0, ios::end); // move the output stream position to the end of the file
            //outfile << "\n"; // add a new line character to create a new row
            //cout << "data_type: " << data_type << endl;
            outfile << data_type; // append the new data type to the new row
            outfile << delimiter; 
            }
        
            currentLine++; // increment the current line
            
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

    cout << "data_type: " << data_type << endl;
    vector<vector<string>> new_data; //new data vector
    vector<vector<float>> floatVec;
    int count = 0;
    

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
            //cout << ">" << endl;
            //cout << "count: " << count << endl;
            //cout << "row[ColumnIndex - 1]: " << row[ColumnIndex - 1] << endl;
            if (stof(row[ColumnIndex - 1]) > stof(data_type)) {
                //cout << "hit: " << row[ColumnIndex - 1] << endl;
                continue;
            } else {
                new_data.push_back(row);
            }

        } else {
            //cout << "meow" << endl;
            new_data.push_back(row);
        }
        count++;
    }

    for (const auto& row : floatVec) {
        for (const auto& elem : row) {
            cout << elem << " ";
        }
        cout << endl;
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
    
    cout << "setValue: " << setValue << endl;
    cout << "ColumnIndex: " << ColumnIndex << endl;
    cout << "setColumn " << setColumn << endl;
    cout << "columnName " << columnName << endl;
    cout << "targetColumn " << targetColumn << endl;

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

void DataManager::innerJoin(vector<string> tb_name, vector<string> id, string target1, string target2){
    string pathInital = program_path; //saves initial program path
    
    string table1_file = program_path;
    string table2_file = program_path;


    //cout << "target1: " << target1 << endl;
    //cout << "target2: " << target2 << endl;

    size_t pos1 = target1.find(id[0] + ".");
    size_t pos2 = target2.find(id[1] + ".");
    if(pos1 != string::npos){ //confirms if correct id is in targets
        //cout << "pos1: " << id[0] << endl;
    } else {
        cout << "No match found." << endl;
     }
    //else 
    if (pos2 != string::npos){
        //cout << "pos2: " << id[1] << endl;
    } else {
        cout << "No match found." << endl;
    }

    //gets the column name of the target
    target1 = target1.substr(target1.find('.') +1);
    target2 = target2.substr(target2.find('.') +1);

    //checks if tables exist and gets file path of tables
    for (unsigned int i = 0; i < tb_name.size(); i++){

        //cout << "tb_name: " << tb_name[i] << endl;
        //cout << "id: " << id[i] << endl;
        if (TableChecker(tb_name[i]) == true) {
            if(i == 0){
                table1_file = table1_file + "/" + tb_name[i] + ".csv";
            } else if (i == 1){
                table2_file = table2_file + "/" + tb_name[i] + ".csv";
            }
        }
    }


vector<vector<string>> table1_data, table2_data; //vector to hold data from each table
vector<string> table1_columns, table2_columns; //vector to hold column names from each table

    // read table1
    ifstream table1(table1_file);
    if (table1.is_open()) {
        //cout << "Reading " << table1_file << "..." <<  endl;
        string line;
        getline(table1, line); // read the first line containing column names
        stringstream ss(line);
        string column_name;
        while (getline(ss, column_name, ',')) {
            // process the column name
            table1_columns.push_back(column_name);
            cout << column_name << "|";
        }

        while (getline(table1, line)) {
            stringstream ss(line);
            vector<string> row;
            string cell;
            while (getline(ss, cell, ',')) {
                // process the cell
                //cout << "cell1: " << cell << endl;
                row.push_back(cell);
            }
            table1_data.push_back(row);
        }
        //cout << "Finished reading " << table1_file << "." << endl;
    } else {
        cout << "Error: could not open " << table1_file << "." << endl;
    }


    // read table2
    ifstream table2(table2_file);
    if (table2.is_open()) {
        //cout << "Reading " << table2_file << "..." << endl;
        string line;
        getline(table2, line); // read the first line containing column names
        stringstream ss(line);
        string column_name;
        while (getline(ss, column_name, ',')) {
            // process the column name
            table2_columns.push_back(column_name);
            cout << column_name << "|";
        }
        cout << endl;

        while (getline(table2, line)) {
            stringstream ss(line);
            vector<string> row;
            string cell;
            while (getline(ss, cell, ',')) {
                // process the cell
                //cout << "cell2: " << cell << endl;
                row.push_back(cell);
            }
            table2_data.push_back(row);
        }   
        //cout << "Finished reading " << table2_file << "." << endl;
    } else {
        cout << "Error: could not open " << table2_file << "." << endl;
    }

vector<vector<string>> joined_data; // vector to hold the joined data

    int table1_join_col_idx = 0; // assuming the join column is the first column in table1
    int table2_join_col_idx = 0; // assuming the join column is the first column in table2
    for (size_t i = 0; i < table1_columns.size(); i++) { // find the join column indices
        if (table1_columns[i] == target1) {
            table1_join_col_idx = i;
            break;
        }
    }
    for (size_t i = 0; i < table2_columns.size(); i++) { // find the join column indices
        if (table2_columns[i] == target2) {
            table2_join_col_idx = i;
            break;
        }
    }

    // perform the inner join
    for (auto row1 : table1_data) { // for each row in table1
        for (auto row2 : table2_data) { // for each row in table2
            if (row1[table1_join_col_idx] == row2[table2_join_col_idx]) { // if the join columns match
                // the join columns match, so add the joined row to the result
                vector<string> joined_row;
                joined_row.insert(joined_row.end(), row1.begin(), row1.end()); // add all columns from row1
                joined_row.insert(joined_row.end(), row2.begin(), row2.end()); // add all columns from row2
                joined_data.push_back(joined_row); // add the joined row to the result
            }
        }
    }

    // print the joined data
    for (unsigned int i = 0; i < joined_data.size(); i++){
        for (unsigned int j = 0; j < joined_data[i].size(); j++){
            if (j == joined_data[i].size() - 1) {
                cout << joined_data[i][j] << endl;
            } else {
                cout << joined_data[i][j] << "|";
            }
        }
    }   


        program_path = pathInital; //resets program path

}


void DataManager::outerJoin(vector<string> tb_name, vector<string> id, string target1, string target2){
    string pathInital = program_path; //saves initial program path
    
    string table1_file = program_path;
    string table2_file = program_path;


    //cout << "target1: " << target1 << endl;
    //cout << "target2: " << target2 << endl;

    size_t pos1 = target1.find(id[0] + ".");
    size_t pos2 = target2.find(id[1] + ".");
    if(pos1 != string::npos){ //confirms if correct id is in targets
        //cout << "pos1: " << id[0] << endl;
    } else {
        cout << "No match found." << endl;
     }
    //else 
    if (pos2 != string::npos){
        //cout << "pos2: " << id[1] << endl;
    } else {
        cout << "No match found." << endl;
    }

    //finds the target after the id
    target1 = target1.substr(target1.find('.') +1);
    target2 = target2.substr(target2.find('.') +1);

    //This for loop checks if the table exists and if it does it adds it to the path for each table scanner
    for (unsigned int i = 0; i < tb_name.size(); i++){

        //cout << "tb_name: " << tb_name[i] << endl;
        //cout << "id: " << id[i] << endl;
        if (TableChecker(tb_name[i]) == true) {//checks if table exists from TableChecker function
            if(i == 0){
                table1_file = table1_file + "/" + tb_name[i] + ".csv";
            } else if (i == 1){
                table2_file = table2_file + "/" + tb_name[i] + ".csv";
            }
        }
    }

vector<vector<string>> table1_data, table2_data;
vector<string> table1_columns, table2_columns;

    // read table1
    ifstream table1(table1_file);
    if (table1.is_open()) {
        //cout << "Reading " << table1_file << "..." <<  endl;
        string line;
        getline(table1, line); // read the first line containing column names
        stringstream ss(line);
        string column_name;
        while (getline(ss, column_name, ',')) {
            // process the column name
            table1_columns.push_back(column_name);
            cout << column_name << "|";
        }

        while (getline(table1, line)) {
            stringstream ss(line);
            vector<string> row;
            string cell;
            while (getline(ss, cell, ',')) {
                // process the cell
                //cout << "cell1: " << cell << endl;
                row.push_back(cell);
            }
            table1_data.push_back(row);
        }
        //cout << "Finished reading " << table1_file << "." << endl;
    } else {
        cout << "Error: could not open " << table1_file << "." << endl;
    }


    // read table2
    ifstream table2(table2_file);
    if (table2.is_open()) {
        //cout << "Reading " << table2_file << "..." << endl;
        string line;
        getline(table2, line); // read the first line containing column names
        stringstream ss(line);
        string column_name;
        while (getline(ss, column_name, ',')) {
            // process the column name
            table2_columns.push_back(column_name);
            cout << column_name << "|";
        }
        cout << endl;

        while (getline(table2, line)) {
            stringstream ss(line);
            vector<string> row;
            string cell;
            while (getline(ss, cell, ',')) {
                // process the cell
                //cout << "cell2: " << cell << endl;
                row.push_back(cell);
            }
            table2_data.push_back(row);
        }   
        //cout << "Finished reading " << table2_file << "." << endl;
    } else {
        cout << "Error: could not open " << table2_file << "." << endl;
    }

// define a vector to store the result of the left outer join
vector<vector<string>> result;

    // iterate through each row of table1_data
    for (vector<string>& row1 : table1_data) { // assume the first column is the join column
        bool match_found = false; // flag to indicate if a match is found
        vector<string> joined_row;

        // check if there is a matching row in table2_data
        for (vector<string>& row2 : table2_data) { // assume the first column is the join column
            if (row1[0] == row2[0]) { // assume the first column is the join column
                // append the matching row from table2_data to row1
                joined_row = row1;
                joined_row.insert(joined_row.end(), row2.begin()+1, row2.end());
                result.push_back(joined_row);
                match_found = true;
            }
        }

        // if no match is found, append null values to row1 and add to result
        if (!match_found) {
            joined_row = row1;
            for (size_t i = 0; i < table2_columns.size()-1; i++) {
                joined_row.push_back("");
            }
            result.push_back(joined_row);
        }
    }

    // append the remaining rows from table2_data that did not have a match in table1_data
    for (vector<string>& row2 : table2_data) {
        bool match_found = false;

        // check if there is a matching row in table1_data
        for (vector<string>& row1 : table1_data) {
            if (row1[0] == row2[0]) {
                match_found = true;
                break;
            }
        }

        // if no match is found, append null values to row2 and add to result
        if (!match_found) {
            vector<string> joined_row(table1_columns.size(), "NULL");
            joined_row.insert(joined_row.end(), row2.begin()+1, row2.end());
            result.push_back(joined_row);
        }
    }

    // print the result
    for (vector<string>& row : result) {
        for (string& cell : row) {
            cout << cell << "|";
        }
        cout << endl;
    }

        program_path = pathInital; //resets program path
}

void DataManager::SelectAllData(){
    //cout << "program_path: " << program_path << endl;
    string pathInital = program_path; //saves initial program path
    for (const auto & entry : fs::directory_iterator(program_path)) {
        if (entry.path().extension() == ".csv") {
            // process the CSV file
            cout << "Found CSV file: " << entry.path() << endl;
        }

        ifstream file(entry.path());
        string line;
        while (getline(file, line)) {
            stringstream ss(line);
            string cell;
            while (getline(ss, cell, ',')) {
                // process the cell
                cout << cell << ",";
            }
            cout << endl;
        }
    }
    // string line;
    // ifstream table(program_path); //opens the file
    // if (table.is_open()) {
    //     while (getline(table, line)) {
    //         stringstream ss(line);
    //         string field;
    //             while (getline(ss, field, ',')) {
    //                 cout << field << "|";
    //             }
    //             cout << endl;
    //     }
    //     table.close();

    // } else {
    //     cout << "!Failed to select table " << tb_name << " because it does not exist." << endl;
    // }
    program_path = pathInital; //resets program path
}

void DataManager::SelectData(string tb_name, string column, string opperator, string column_target, string data_type){
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
