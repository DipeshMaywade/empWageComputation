#!/bin/bash -x

IsPresent=1
empWagePerHr=20
maxOneDayHr=8

AttendanceCheck=$((RANDOM%2))

if [[ $AttendanceCheck -eq 1 ]];
then
	echo "Employee present";
	dailyWage=$(($empWagePerHr*$maxOneDayHr));

else
	echo "Employee is not present";
	dailyWage=0;
fi

echo $dailyWage
