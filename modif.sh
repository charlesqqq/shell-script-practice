#! /bin/bash

dir=$1

if [ ! -d "$dir" ]; then
    echo "Dir not exist"
fi

for i in {0..23}; do
    hours[i]=0
done

modifiedHours=$(stat -c %y "$dir"/* | cut -c 12-13)

for i in $modifiedHours; do
    ((hours[i] = hours[i] + 1))
done

echo -e "Hours \t Files \t Hours \t Files"
echo -e "----- \t ----- \t ----- \t -----"

for i in {0..11}; do
    ((j = i + 12))
    echo -e "$i \t ${hours[i]} \t $j \t ${hours[j]}"
done