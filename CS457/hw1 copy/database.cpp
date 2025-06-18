#include "dataManager.h"
#include <iostream>
#include <filesystem>

using namespace std;
namespace fs = std::filesystem;

void Database::CreateDB(string db_name){
    if(fs::exists(program_path_init) && fs::is_directory(db_name)){
        cout << "!Failed to create database " << db_name << " because it already exists." << endl;
    } else {
        //cout << "meow" << endl;
        cout << "Creating Database " << db_name << endl;
        fs::create_directories(db_name);
    }
}
void Database::DropDB(string db_name){
    if (fs::exists(program_path_init) && fs::is_directory(db_name)) {
        try {
            program_path_init /= db_name; //adds db_name to path
            fs::remove_all(program_path_init);
            std::cout << "Deleted Database " << db_name << endl;
        } catch (const std::filesystem::filesystem_error& e) {
            std::cerr << "Error deleting folder: " << e.what() << '\n';
        }
    } else {
        cout << "!Failed to drop database " << db_name << " because it does not exist." << endl;
    }
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