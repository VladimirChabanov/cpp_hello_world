#!/bin/bash
g++ -o app app.cpp
out=$(./app)
expect="05.07.2023"
if ["$out" == "$expect"]; then
  echo "True"
  exit 0
else
  echo "False"
  exit 1
fi
