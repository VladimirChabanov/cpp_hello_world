#include <iostream>
#include <ctime>

int main() {
    std::time_t t = std::time(0);
    std::tm* now = std::localtime(&t);
    std::cout << (now->tm_year + 1900) << '-' 
              << (now->tm_mon + 1) << '-'
              <<  now->tm_mday
              << std::endl;
    return 0;
}
