#include <iostream>
#include <string>
#include "Func.h"

int main(){

    std::cout << "Welcome! This program is a book inventory.\n";
    std::cout << "1 : view Entry\n2 : New Entry\n3 : Delete Entry\n\n";
    std::cout << "Please enter a number from 1-3: ";
    int decision;
    std::cin >> decision;

    std::string bookInfo, bookId;
    switch(decision){
    case 1 : // View Entry
        std::cout << "\n\nPlease enter book Id/name/author: ";
        std::cin.ignore(1, '\n');
        std::getline(std::cin, bookInfo);
        print(locate(bookInfo));
        break;
    case 2 : // Create new entry
        print(locate(write()));
        break;
    case 3 : // Delete entry
        std::cout << "Please enter the id number of the book you wish to delete: ";
        std::cin.ignore(1, '\n');
        std::cin >> bookId;
        del(locate(bookId));
        break;
    default :
        std::cout << "Invalid Input" <<  std::endl;
        break;
    }
}