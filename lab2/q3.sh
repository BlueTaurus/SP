#!/bin/bash

showallowner()
{

for i in `ls ~/`
do

	if [ -f ~/$i ]
	then 
	a=(`ls -l ~/$i`)
	echo -e "\n"
	
	if [ $1 = ${a[3]} ]
	then
		echo -en "$i"
		if [ -f ~/$i ]
		then
			echo -en " | file"
			echo "| $1"
		
		else
		
			echo -en " | directory"
			echo -en "| $1"
		fi

	fi
	

	fi		
done

}

if [ $# -gt 1 ]
then 
echo "more argument  than usual"
exit
fi
if [ $# -eq 0 ]
then
echo "no arguments"
exit
fi
showallowner $1


