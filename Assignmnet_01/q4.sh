#!/bin/bash

IFS=$'\n'

a=(`cat $1`)


echo $b

declare -i i=0
declare -i k=0
t=""
while [ $i -lt ${#a[*]} ] 
do
	
	temp=${a[$i]}
		
	i=$i+1
	#echo $temp ${#a[*]}
	if [ ${#temp} -eq 0 ]
	then
	continue
	fi
	
	declare -i j=$i
	
	while [ $j -lt ${#a[*]} ]
	do
		if [ ${#a[$j]} -ne 0 ]
		then
		
		if [ $temp = ${a[$j]} ]
		then
		t[$k]=$j
		k=$k+1
		echo alert : \"$temp\" at line $j is removed
		fi;fi
		j=$j+1
	done
	
done

k=(`echo $k | sort |uniq`)

i=0
while [ $i -lt $k ]
do
	unset a[${t[$i]}]
	i=$i+1
done

echo "" >$1
	
i=0
while [ $i -lt ${#a[*]} ]
do
	echo -e ${a[$i]}"\n" 1>>$1
	i=$i+1
done

echo ${a[*]}
