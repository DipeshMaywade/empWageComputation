#!/bin/bash -x

isPresent=1;
random=$((RANDOM%2));

if [ $isPresent -eq $random ];
then
	echo "Empolyee Is Present"
else
	echo "Employee Is Not Present"
fi
