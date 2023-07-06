#!/bin/bash

g++ app.cpp -o app

output=$(./app)

if [ "$output" = "06.07.2023" ]
then
echo "Вывод совпадает с текущей датой: $output"
else
echo "Вывод не совпадает с текущей датой. Текущая дата: $expected_output, вывод программы: $output"
exit 1
fi
