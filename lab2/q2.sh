#!/bin/bash

alpha=f

for i in `pidof $1`
do
alpha=t

if [ "`grep -i "status" /proc/$i/status`" = "RUNNING" ]
then
	
	_ppid=`grep -i "ppid" /proc/$i/status`
	_name=`grep -i "name" /proc/$i/status`
	
	echo -e "\nPID: $i\n${_name}\n$_ppid\nSTATE: RUNNING\n"
	echo -e "\n-------------------------------------------\n"
else
echo "the process is sleeping"
fi

done 

if [ $alpha = "f" ]
then
	echo "no such commadn exist"
fi
