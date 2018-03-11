#!/bin/bash

a=(`ls ./$1`)





#echo -e ${a[2-1]} 

temp=""

declare -i aa

aa=`expr ${#a[*]} - 1`



for i in `seq 0 "$aa"`
{
	IFS="."
	ea=(${a[$i]})
	IFS=" "
	if [ -d ./$1/${ea[*]} ];then  continue; fi
		
	ans=${ea[`expr ${#ea[*]} - 1`]}
	mkdir ./$1/$ans 2>/dev/null
	IFS=" "	
	mv ./$1/${a[$i]} ./$1/$ans && echo "dir ${a[$i]} is transfered to $ans " 2>/dev/null

}


