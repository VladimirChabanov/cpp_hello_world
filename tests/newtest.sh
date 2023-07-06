#include <iostream>
#include <ctime>
#include <string>
#include <sstream>

int main() {
    // Получаем текущую дату в формате ДД.ММ.ГГГГ
    std::time_t t = std::time(nullptr);
    std::tm tm = *std::localtime(&t);
    std::stringstream ss;
    ss << std::put_time(&tm, "%d.%m.%Y");
    std::string current_date = ss.str();

    // Запускаем приложение и получаем выводимую им дату
    FILE* pipe = popen("./app.cpp", "r");
    if (!pipe) {
        std::cerr << "Ошибка запуска приложения" << std::endl;
        return 1;
    }
    char buffer[128];
    std::string app_date = "";
    while (!feof(pipe)) {
        if (fgets(buffer, 128, pipe) != nullptr)
            app_date += buffer;
    }
    pclose(pipe);

    // Удаляем символ новой строки из конца строки
    app_date.erase(std::remove(app_date.begin(), app_date.end(), '\n'), app_date.end());

    // Сравниваем даты
    if (current_date == app_date) {
        std::cout << "Тест пройден: даты совпадают" << std::endl;
    } else {
        std::cout << "Тест не пройден: даты не совпадают" << std::endl;
    }

    return 0;
}
