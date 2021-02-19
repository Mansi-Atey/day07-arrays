#!/bin/bash
echo "Enter a number"
 read n
count=0
for ((i=2;i<=$n;i++))
 do
   while [ $(($n%$i)) -eq 0 ]
  do
 arr[$count]=$i
n=$(($n/$i))
count=$count+1
   done
 done
echo "The prime factors are:=" ${arr[@]}

