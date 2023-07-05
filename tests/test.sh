#!/bin/bash

output=$(./app)

expected_output="05.07.2023"

if [ "$output" == "$expected_output" ]; then
	echo "Верно"
	exit 1
else
	echo "Неверно"
	exit 0
fi
