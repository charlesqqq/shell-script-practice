#! /bin/bash

echo "Param nums: $#"

for i in "$@"; do
    echo "$i"
done
