#!/bin/bash -x

#constent for program
empFullTime=1;
empPartTime=2;
empWagePerHr=20;
maxWorkingDays=20;
totalSalary=0;
maxHrsInMonth=100;

#variables for loop
totalEmpHrs=0;
totalWorkingDays=0;

declare -A dailyWage

function empHrCheck() {
	 local empHrs
	 case $1 in
         	$empFullTime)
                	empHrs=10 ;;
                $empPartTime)
                    	empHrs=8 ;;
                *)
                        empHrs=0 ;;
         esac
	 echo $empHrs
}

while [ $totalEmpHrs -le $maxHrsInMonth ] && [ $totalWorkingDays -le $maxWorkingDays ]
do

	((totalWorkingDays++))
	empHrs="$( empHrCheck $((RANDOM%3)) )";
	totalEmpHrs=$((totalEmpHrs+empHrs));
	salary=$((empHrs*empWagePerHr));
	dailyWage["day "$totalWorkingDays]="$salary";

done

totalSalary=$(($totalEmpHrs*$empWagePerHr));
echo ${dailyWage[@]};
echo ${!dailyWage[@]};

