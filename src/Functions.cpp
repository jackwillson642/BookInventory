#include <iostream>
#include <fstream>
#include <string>

int locate(std::string input){
    std::ifstream id_in;
    std::ifstream name_in;
    
    id_in.open("./storage/id.txt");
    name_in.open("./storage/name.txt");

    std::string id, name;
    int i;
    for(i=1;;i++){
        std::getline(id_in, id);
        std::getline(name_in, name);
        
        if(id == input || name == input){
            break;
        }
        else if(id == "***" || name == "***"){
            i=-1;
            break;
        }
    }
    return i;
}

void print(int loc){
    if(loc < 0){
        std::cout << "\nBook not found\n";
    }
    else{
        // Creating 4 objects of ifstream one for each properties  
        std::ifstream id_in;
        std::ifstream name_in;
        std::ifstream author_in;
        std::ifstream publication_in;

        // Opening all storage files
        id_in.open("./storage/id.txt");
        name_in.open("./storage/name.txt");
        author_in.open("./storage/author.txt");
        publication_in.open("./storage/publication_year.txt");

        std::string id, name, author, publication;
        for(int i = 0; i < loc; i++){
            std::getline(id_in, id);
            std::getline(name_in, name);
            std::getline(author_in, author);
            std::getline(publication_in, publication);
        }

        std::cout << "\n\n";
        std::cout << "Id: " << id << std::endl;
        std::cout << "Name: " << name << std::endl;
        std::cout << "Author: " << author << std::endl;
        std::cout << "Publication year: " << publication << std::endl;
    }
}

std::string write(){
    std::cout << "To add a new entry, enter the book info.\n\n";
    
    std::string id, name, author, publication_year;
    std::cin.ignore(1, '\n');

    std::cout << "Enter Id: " << std::endl;
    std::getline(std::cin, id);
    
    std::cout << "Enter name: " << std::endl;
    std::getline(std::cin, name);
    
    std::cout << "Enter author: " << std::endl;
    std::getline(std::cin, author);
    
    std::cout << "Enter publication year: " << std::endl;
    std::getline(std::cin, publication_year);

    // Creating 4 objects of ifstream one for each properties  
    std::ofstream id_out;
    std::ofstream name_out;
    std::ofstream author_out;
    std::ofstream publication_out;

    // Opening all storage files
    id_out.open("./storage/id.txt", std::ios_base::app);
    name_out.open("./storage/name.txt", std::ios_base::app);
    author_out.open("./storage/author.txt", std::ios_base::app);
    publication_out.open("./storage/publication_year.txt", std::ios_base::app);

    id_out << "\n" << id;
    name_out << "\n" << name;
    author_out << "\n" << author;
    publication_out << "\n" << publication_year;

    std::cout << "\nNew entry created." << std::endl;

    id_out.close();
    name_out.close();
    author_out.close();
    publication_out.close();

    return(id);

}

#include <vector>
#include <algorithm>

void del(int loc){
    // const char* const id_file = "./storage/id.txt";
    // const char* const name_file = "./storage/name.txt";
    // const char* const author_file = "./storage/author.txt";
    // const char* const publication_file = "./storage/publication_year.txt";

    std::vector<std::string> id_all_lines;
    std::vector<std::string> name_all_lines;
    std::vector<std::string> author_all_lines;
    std::vector<std::string> publication_all_lines;

    {
        // Open the file for input, read the lines in the file into a vector; close the file.
        std::ifstream id_file("./storage/id.txt");
        std::ifstream name_file("./storage/name.txt");
        std::ifstream author_file("./storage/author.txt");
        std::ifstream publication_file("./storage/publication_year.txt");
        std::string id_line, name_line, author_line, publication_line;
        for(int i=1; (std::getline(id_file, id_line)); i++){
            if(i!=loc){
              id_all_lines.push_back(id_line);
              std::getline(name_file, name_line);
              name_all_lines.push_back(name_line);
              std::getline(author_file, author_line);
              author_all_lines.push_back(author_line);
              std::getline(publication_file, publication_line);
              publication_all_lines.push_back(publication_line);
            }
        }
    }

    {
        // Open the file for output; write the contents of the vector into the file; close the file.
        std::ofstream id_file("./storage/id.txt");
        std::ofstream name_file("./storage/name.txt");
        std::ofstream author_file("./storage/author.txt");
        std::ofstream publication_file("./storage/publication_year.txt");

        int i = 1, size = id_all_lines.size();
        for(const std::string& id_line : id_all_lines){
            if(i == size){
                id_file << id_line;
            }
            else{
                id_file << id_line << '\n';
            }
            i++;
        }
        i=1;
        for(const std::string& name_line : name_all_lines){
            if(i == size) {
                name_file << name_line;
            }
            else {
                name_file << name_line << '\n';
            }
            i++;
        }
        i=1;
        for(const std::string& author_line : author_all_lines){
            if(i == size) {
                author_file << author_line;
            }
            else {
                author_file << author_line << '\n';
            }
            i++;
        }
        i=1;
        for(const std::string& publication_line : publication_all_lines){
            if(i == size) {
                publication_file << publication_line;
            }
            else {
                publication_file << publication_line << '\n';
            }
            i++;
        }
    }

    // {
    //     // to verify that the lines have been modified, dump the contents of the output file
    //     std::cout << std::ifstream(id_file).rdbuf();
    // }
}
