#!/bin/bash -x

empFullTime=1;
empPartTime=2;

empWagePerHr=20;
workingDays=20;
totalSalary=0;



for (( day=1; day<=$workingDays; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
		$empFullTime)
			empHrs=10 ;;
		$empPartTime)
			empHrs=8 ;;
		*)
			empHrs=0
			echo "Employee Is Absent" ;;
	esac


	salaryPerDay=$(($empWagePerHr*$empHrs));
	totalSalary=$(($totalSalary+$salaryPerDay));
done

echo $totalSalary
