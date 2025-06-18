/**
 * @file dataManager.h
 * @author Miguel Muniz
 * @brief header file for dataManager.cpp contains the class declarations for the database, table and dataManager classes
 * Also contains the path variables used by the functions
 * @version 2.2
 * @date 2023-04-03
 */

#ifndef SQLMANAGER_H
#define SQLMANAGER_H
#define MAX 2
#include <string>
#include <filesystem>
#include <iostream>
#include <vector>
//#include <ArryList.h>

using namespace std;
namespace fs = std::filesystem;

static fs::path program_path_init = fs::current_path(); //gets current file path initial
fs::path program_path = program_path_init; //creates a copy of the path and is used by the functions
fs::path program_path_copy = program_path; //creates a copy of the path and is used by the functions
class Database { //manages databases
public:
    void CreateDB(string db_name);
    void DropDB(string db_name);
    void UseDB(string db_name);
    //fs::path GetPath() {return program_path;}
};

class Table { //manages tables
public:
    void CreateTB(string tb_name, string data_type);
    void DropTB(string tb_name);
    void SelectTB(string tb_name);
    void AppendTB(string tb_name, string column, string data_type);
};

class DataManager { //manages data
int recordsCount = 0; //counts the number of records
int updateCount = 0; //counts the number of updates
int deleteCount = 0; //counts the number of deletes
unsigned int numColumns = 0; //number of columns
unsigned int ColumnIndex = 0;//index of the column
int target_pid = 0; //target pid
int row_index = 1; //index of the row
int pid_index = -1; // Index of the Pid column
unsigned int target_column_index = 1; // Index of the target column
vector<vector<string>> data; //vector of vectors to store the data
public:
    void InsertData(string tb_name, string data_type);
    void DeleteData(string tb_name, string opperator, string column, string data_type);
    void UpdateData(string tb_name, string setColumn, string setValue, string targetColumn, string columnName);
    void selectData(string tb_name, string column, string opperator, string column_target, string data_type);
    bool TableChecker(string tb_name);
    void query(string tb_name, string opperator, string column, string data_target);
    void getColumnIndex(string tb_name,string column, string data_target, bool pathReset);
    //vector<vector<string>> read_csv(string filename) {
};


#include "database.cpp"
#include "table.cpp"
#include "datamanager.cpp"
#endif