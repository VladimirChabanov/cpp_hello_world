#!/bin/bash
output=$(./app)
expected_output="05.07.2023"
if [ "$output" == "$expected_output" ]; then
        echo "Successfull"
        exit 1
else
        echo "Failed"
        exit 0
fi
