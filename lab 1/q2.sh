#!/bin/bash

if [ $1 != "-c" ]
then
	f1=(`ls -l $1`)
	u1=${f1[2]}

	if [ $u1 = $2 ]
		then
			echo "Origonal"
		else
			echo "USERS don't created the file themselves"
	fi

else

	f1=(`ls -l $2`)
	
	u1=${f1[2]}

	f2=(`ls -l $4`)
	u2=${f2[2]}

	
	if [  $u1 = $3 -a $u2 = $5  ]
		then
			diff $2 $4 2>/dev/null 1>2 && echo "copied" || echo "No copy"
		else
			echo "USERS don't created the file themselves, run again without -c"
	fi

fi
