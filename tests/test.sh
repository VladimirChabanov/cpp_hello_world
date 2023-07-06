#1/bin/bash

output=$(./app)

expected_output="05.07.2023"

if [ "$output" == "$expected_output" ]; then
        echo "Bepнo"
        exit 0
else
        echo "Неверно"
        exit 0
fi
