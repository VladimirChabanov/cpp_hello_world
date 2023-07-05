#!/bin/bash

g++ app.cpp -o app

output=$(./app)

expected_output="05.07.2023"

if [ "$output" == "$expected_output" ]; then
echo "Success: $output"
else
echo "Fail: $expected_output, >
fi
