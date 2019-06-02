#! /bin/bash
step=$1
for ((i = 0; i < step; i++)); do
    cd ..
done
echo "pwd => $(pwd)"