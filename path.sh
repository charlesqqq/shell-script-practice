#! /bin/bash

old_IFS=$IFS
IFS=':'

if [ "$1" == "-c" ]; then
    command=$2
    for dir in $PATH; do
        fullCommandPath="$dir/$command"
        if [ -e "$fullCommandPath" ]; then
            echo "$fullCommandPath"
        fi
    done
fi

if [ -z "$1" ]; then
    for dir in $PATH; do
        echo "$dir"
    done
fi

IFS=$old_IFS