#!/bin/bash -x
printf "Welcome\n"


#TAKING THREE INPUTS FROM USER  
read -p "Enter First Input a : " a
read -p "Enter Second Input b : " b
read -p "Enter Third Input c : " c


#PERFORMING ARITHMETIC OPERATIONS
echo "a+b*c : " $((a+b*c))
echo "a*b+c : " $((a*b+c))
echo "c/a+b : " `echo "scale=4; $c/$a+$b" | bc -l`
echo "a%b+c : " `echo "scale=4; $a%$b+$c" | bc -l`


#STORING RESULT IN DICTIONARY
storeResult[0]=$((a+b*c))
storeResult[1]=$((a*b+c))
storeResult[2]=`echo "scale=4; $c/$a+$b" | bc -l`
storeResult[3]=`echo "scale=4; $a%$b+$c" | bc -l`


#DISPLAY DICTIONARY VALUES 
echo "${storeResult[@]}"

