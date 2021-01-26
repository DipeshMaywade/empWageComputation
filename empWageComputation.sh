#!/bin/bash -x

empFullTime=1;
empPartTime=2;
empWagePerHr=20;
maxWorkingDays=20;
totalSalary=0;
maxHrsInMonth=100;
#variables
totalEmpHrs=0;
totalWorkingDays=0;



while [ $totalEmpHrs -le  $maxHrsInMonth ] && [ $totalWorkingDays -le $maxWorkingDays ]
do

	((totalWorkingDays++))

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

	totalEmpHrs=$(($totalEmpHrs+$empHrs));

done

totalSalary=$(($totalEmpHrs*$empWagePerHr))

