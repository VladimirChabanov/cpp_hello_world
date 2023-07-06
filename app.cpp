#include <iostream>
 
int main(){
    std::time_t t = std::time(nullptr);
    std::tm tm = *std::localtime(&t);
    std::cout << std::put_time(&tm, "%d.%m.%Y") << '\n';
}
