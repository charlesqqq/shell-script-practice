#! /bin/bash

file=$1
longestStr=""
maxlen=0

for str in $(strings "$file"); do
    len=${#str}
    if (($len > $maxlen)); then
        maxlen=$len
        longestStr=$str
    fi
done

echo "Longest string is: $longestStr, length = $maxlen"
