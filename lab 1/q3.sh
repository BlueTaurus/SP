#!/bin/bash
temp=(red hat)

unix=("debian" "${temp[*]}" "ubanto2" "suse" "fedora")

echo ${unix[*]}

echo ${#unix}

echo ${#unix[2]}

echo ${unix[*]:3:5}

echo ${unix[*]/ubanto/sco ubanto}

unix[6]=Aix
unix[7]=hp-ux

echo ${unix[*]}

unset $unix[3]

linux=(${unix[*]})

echo ${linux[*]}

bash=(${linux[*]} ${unix[*]})

echo ${bash[*]}

unset linux 
unset unix

echo ${bash[*]}
