#!/bin/bash -x

isFullTime=1
isPartTime=2
empWagePerHr=20

empType=$((RANDOM%3));

if [ $isFullTime -eq $empType ];
then
        empHr=10;

elif [ $isPartTime -eq $empType ];
then
        empHr=8;

else
	empHR=0;
	echo 'Emp is absent';
fi

empSalaryIs = $(($empWagePerHr*$empHr))
echo $empSalaryIs
