#!/bin/bash

g++ app.cpp -o app

output=$(./app)

if [ "$output" = "06.07.2023" ]
then
  echo "Вывод программы совпадает с ожидаемым: $output"
else
  echo "Вывод программы не совпадает с ожидаемым. Ожидается: $expected_output, получено: $output"
fi
