#!/bin/bash

a=$1
b=$2
if [ $# -eq 0 ]
then
	read -p "please enter number 1: " a
	read -p "please enter number 2: " b
fi

if [ $# -eq 1 ]
then
	read -p "please enter number 2: " b
fi

echo `expr $a + $b`
echo `expr $a - $b`
if [ $b -ne 0 ]
then
	echo `expr $a / $b`
fi

echo `expr $a \* $b`

