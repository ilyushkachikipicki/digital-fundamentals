#!/bin/bash

for i in $(ls $1)
do
  for j in $(cat $1$i)
  do
    age=$(echo $j | cut -d ":" -f2)
    if [ $age -ge 18 ]
    then
      t=$((t+1)
    else
      nt=$((nt+1))
    fi
  done
done
echo $t
echo $nt
