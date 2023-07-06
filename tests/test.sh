#1/bin/bash

output=$(./app)

expected_output="06.07.2023"

if [ "$output" == "$expected_output" ]; then
        echo "Дата верна"
        exit 0
else
        echo "Дата неверна"
        exit 0
fi
