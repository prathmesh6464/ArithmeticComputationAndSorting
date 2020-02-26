#!/bin/bash -x
printf "Welcome\n"


#TAKING THREE INPUTS FROM USER  
read -p "Enter First Input a : " a
read -p "Enter Second Input b : " b
read -p "Enter Third Input c : " c


#PERFORMING ARITHMETIC OPERATIONS
echo "a+b*c :" $((a+b*c))

