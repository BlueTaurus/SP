#!/bin/bash


is_lower()
{
ans= `echo $1 |tr A-Z a-z`
return $ans
}


is_root()
{
if [ `id -u $1` -eq 0 ]
then
echo "root"
else
echo "normal user"
fi
}


is_user_exist()
{
a=(`cat /etc/passwd | cut -d : -f 1` )
for i in ${a[*]}
do
	if [ $1 -eq $i ]
	then
	echo "user $i exist"
	return
	fi
done
}

#all functions are tested


