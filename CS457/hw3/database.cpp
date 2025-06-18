/**
 * @file database.cpp
 * @author Miguel Muniz
 * @brief file for database.cpp contains the function definitions for the database class
 * @version 3.0
 * @date 2023-04-24
 */

#include "SQLManager.h"
#include <iostream>
#include <filesystem>

using namespace std;
namespace fs = std::filesystem;

void Database::CreateDB(string db_name){
    string initalDirectory = program_path_init; //saves initial program path
    if(fs::exists(initalDirectory) && fs::is_directory(db_name)){
        cout << "!Failed to create database " << db_name << " because it already exists." << endl;
    } else {
        cout << "Database " << db_name << " created." << endl;
        fs::create_directories(db_name);
        program_path_init = initalDirectory; //resets program path to initial path
    }
}
void Database::DropDB(string db_name){
    string initalDirectory = program_path_init; //saves initial program path
    if (fs::exists(program_path_init) && fs::is_directory(db_name)) {
        try {
            program_path_init /= db_name; //adds db_name to path
            fs::remove_all(program_path_init);
            std::cout << "Database " << db_name << " deleted." <<endl;
        } catch (const std::filesystem::filesystem_error& e) { //catches error if folder is not empty
            std::cerr << "Error deleting folder: " << e.what() << '\n';
        }
    } else {
        cout << "!Failed to drop database " << db_name << " because it does not exist." << endl;
    }
    program_path_init = initalDirectory;//resets program path to initial path
}
void Database::UseDB(string db_name){
    if (fs::exists(program_path_init) && fs::is_directory(db_name)) { //uses initial program path
        program_path = program_path_init; //resets program path to initial path
        program_path /= db_name; //adds db_name to path
        cout << "Using Database " << db_name << endl;
    } else {
        cout << "!Failed to use database " << db_name << " because it does not exist." << endl;
    }
}