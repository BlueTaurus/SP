#!/bin/bash

a=(`ls ~/test`)





#echo -e ${a[2-1]} 

temp=""

declare -i aa

aa=`expr ${#a[*]} - 1`



for i in `seq 0 "$aa"`
{
	IFS="."
	ea=(${a[$i]})
	IFS=" "
	if [ -d ~/test/${ea[*]} ];then  continue; fi
		
	ans=${ea[`expr ${#ea[*]} - 1`]}
	mkdir ~/test/$ans 2>/dev/null
	IFS=" "	
	mv ~/test/${a[$i]} ~/test/$ans && echo "dir ${a[$i]} is transfered to $ans " 2>/dev/null

}


