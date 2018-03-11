#!/bin/bash

if [ $# -eq 0 ]
then
	echo "kndily input the file"
exit
fi

a=`cat ./$1`

IFS=$'\n' 

a=(${a[*]})

declare -i i=0

touch ./evenfile ./oddfile

echo "" >./evenfile
echo "" >./oddfile

while [ $i -lt `expr ${#a[*]} - 1` ]
do
	echo line $i copied
	
	temp=`expr $i % 2`

	if [ $temp -eq 0 ]
	then
		echo -e ${a[$i]}"\n" 1>>evenfile 
	else
		echo -e ${a[$i]}"\n" 1>>oddfile
	fi
	

	
	i=$i+1
	
done


echo "all done"
