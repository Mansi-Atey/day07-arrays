#!/bin/bash
temp=1
  for ((i=1;i<=100;i++))
    do
       num=$(($i%11))
     if [$num -eq 0 ]
  then
     arr[$temp]=$i
     temp=$(($temp+1))
    fi
  done
echo ${arr[@]}
