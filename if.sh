#! /bin/bash

read -p "input 1~3: " num
if [ "$num" == 1 ]; then
     echo "one"
elif [ "$num" == 2 ]; then
     echo "two"
elif [ "$num" == 3 ]; then
     echo "three"
else
     echo "other number"
fi

read -p "input string: " str
if [ -z "$str" ]; then
     echo "Empty string"
fi

if [ -n "$str" ]; then
     echo "Non empty string"
fi

if ((1 < 2 && 1 > 0)); then
     echo "test passed"
fi
