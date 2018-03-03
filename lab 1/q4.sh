#!/bin/bash

a=`cat test.txt`

IFS=$'\n' 

temp=(${a[*]})

echo ${temp[*]}

echo ${#temp[*]}
echo ${#temp[2]}
echo ${temp[2]}
