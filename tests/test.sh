#!/bin/bash
g++ -o app app.cpp
out = $(./app)
if ["$out" == "05.07.2023"]; then
  echo "True"
  exit 0
else
  echo "False"
  exit 1
fi
