#!/bin/bash
min=0
max=0
MAXCOUNT=10
count=1


while [ "$count" -le $MAXCOUNT ]; do
randomNum=$((100 + $RANDOM%1000))

number[$count]=$randomNum
 let "count += 1"
done

echo "${number[@]}"


for i in ${number[@]}
do
 (( $i > max || max == 0)) && max=$i
 (( $i < min || min == 0)) && min=$i
done
echo min=$min
echo max=$max
