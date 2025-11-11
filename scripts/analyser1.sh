#!/bin/bash

for i in $(ls $1)
do
  for u in $(cat $1$i)
  do
    name=$(echo $u | cut -d ":" -f1)
    age=$(echo $u | cut -d ":" -f2)
    email=$(echo $u | cut -d ":" -f3)
    echo "$name $age $email"
  done
done
