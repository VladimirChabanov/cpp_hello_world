#1/bin/bash

output=$(./app)

expected_output="06.07.2023"

if [ "$output" == "$expected_output" ]; then
        echo "Выведены верные данные"
        exit 0
else
        echo "Выведены неверные данные"
        exit 0
fi
