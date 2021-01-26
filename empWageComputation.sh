#!/bin/bash -x

empFullTime=1;
empPartTime=2;
empWagePerHr=20;
maxWorkingDays=20;
maxHrsInMonth=100;
#variables
totalEmpHrs=0;
totalWorkingDays=0;


function empHrCheck() {
	local empHrs
	case $1 in
        	$empFullTime)
                	empHrs=8 ;;
                $empPartTime)
                        empHrs=4 ;;
                *)
                        empHrs=0 ;;
        esac
	echo $empHrs
}

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $maxWorkingDays ]]
do

	((totalWorkingDays++))

	empHrsPerDay="$( empHrCheck $((RANDOM%3)) )"
	totalEmpHrs=$((totalEmpHrs+empHrsPerDay));

done

totalSalary=$(($totalEmpHrs*$empWagePerHr))
echo $totalSalary

