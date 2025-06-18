/**
 * @file dataManager.h
 * @author Miguel Muniz
 * @brief header file for dataManager.cpp contains the class declarations for the database and table classes
 * Also contains the path variables used by the functions
 * @version 0.5
 * @date 2023-03-05
 */

#ifndef DATAMANAGER_H
#define DATAMANAGER_H
#include <string>
#include <filesystem>

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
    void CreateTB(string tb_name, string column, string data_type1, string column2, string data_type2, string data_of_type);
    void DropTB(string tb_name);
    void SelectTB(string tb_name);
    void AppendTB(string tb_name, string column, string data_type);
};

#include "database.cpp"
#include "table.cpp"
#endif