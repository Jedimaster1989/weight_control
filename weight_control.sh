#!/bin/sh
set -e
MAX_WEIGHT=DEFINE_MAX_WEIGHT
OBJECTIVE=DEFINE_MIN_WEIGHT

if [ $(echo "$1 > $MAX_WEIGHT" | bc -l) -eq 1 ]
then
        echo  "On, $(date +"%Y-%m-%d %T") your weight is: ${1} Kg, above the Maximum of ${MAX_WEIGHT}!" >> weight_tracking.txt
        echo "On, $(date +"%Y-%m-%d %T") your weight is ${1} Kg and is greater than the Maximum of ${MAX_WEIGHT} Kg, ATTENTION!"
elif [ $(echo "$1 == $MAX_WEIGHT" | bc -l) -eq 1 ]
then
        echo  "On, $(date +"%Y-%m-%d %T") your weight is: ${1} Kg, equal to Maximum ${MAX_WEIGHT}!" >> weight_tracking.txt
        echo "On, $(date +"%Y-%m-%d %T") your weight is ${1} Kg and is equal to the Maximum of ${MAX_WEIGHT} Kg, ATTENTION!"
elif [ $(echo "$1 < $OBJECTIVE" | bc -l) -eq 1 ]
then
        echo  "On, $(date +"%Y-%m-%d %T") your weight is: ${1} Kg, underweight!!!" >> weight_tracking.txt
        echo "On, $(date +"%Y-%m-%d %T") your weight is ${1} Kg and is less than the objective of ${OBJECTIVE} Kg, ATTENTION!"
elif [ $(echo "$1 < $MAX_WEIGHT  &&  $1 > $OBJECTIVE" | bc -l) -eq 1 ]
then
        echo  "On, $(date +"%Y-%m-%d %T") your weight is: ${1} Kg" >> weight_tracking.txt
        echo  "On, $(date +"%Y-%m-%d %T") your weight is ${1} Kg keep on fighting! BE STRONG!!"
elif [ $(echo "$1 == $OBJECTIVE" | bc -l) -eq 1 ]
then
        echo  "On, $(date +"%Y-%m-%d %T") your weight is: ${1} Kg OBJECTIVE ACCOMPLISHED, CONGRATULATIONS!!" >> weight_tracking.txt
        echo  "On, $(date +"%Y-%m-%d %T") your weight is ${1} Kg OBJECTIVE ACCOMPLISHED, CONGRATULATIONS!!"
fi

