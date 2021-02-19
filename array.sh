#!/bin/bash
total=0
for ((i=1;i<=3;i++))
do
   rndNum=$((1+$RANDOM%3))
   arr[$i]=$rndNumber
   total=$(($total+$rndNum))
 done
echo ${arr[@}}
echo $total
