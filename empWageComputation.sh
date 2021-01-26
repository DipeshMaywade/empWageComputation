#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empWagePerHr=20;

empCheck=$((RANDOM%3));

case $empCheck in
	$isFullTime)
		empHrs=10 ;;
	$isPartTime)
		empHrs=8 ;;

	*)
		empHrs=0
		echo "Employee Is Absent" ;;
esac

empSalary=$(($empHrs*$empWagePerHr));
echo $empSalary
