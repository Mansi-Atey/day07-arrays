#!/bin/bash
min=0
max=0
arr=(5 1 8 3 9 2)
echo "Array in original order"
echo ${arr[@]}
for ((i=0;i<6;i++))
do
  for((j=0;j<6-i-1;j++))
do
  if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
then
temp=${arr[j]}
arr[$j]=${arr[$((j+1))]}
arr[$((j+1))]=$temp
fi
done
done
echo "Array in sorted order is:="
echo ${arr[@]}
for i in ${arr[@]}
do
 (( $i > max || max == 0)) && max=$i
 (( $i < min || min == 0)) && min=$i
done
echo min=$min
echo max=$max
