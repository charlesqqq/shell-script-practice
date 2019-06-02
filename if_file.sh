#! /bin/bash

read -p "file name: " file
if [ -e "$file" ]; then
    echo "file exist"
fi
if [ -d "$file" ]; then
    echo "it is a directory"
fi
if [ -f "$file" ]; then
    echo "it is a file"
fi
if [ -s "$file" ]; then
    echo "file not empty"
fi


