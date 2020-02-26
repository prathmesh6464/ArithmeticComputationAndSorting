#!/bin/bash -x
printf "Welcome\n"


#VARIABLE
declare -A storeResult
declare -a storeDictionaryValue


#TAKING THREE INPUTS FROM USER  
read -p "Enter First Input a : " a
read -p "Enter Second Input b : " b
read -p "Enter Third Input c : " c


#PERFORMING ARITHMETIC OPERATIONS
echo "a+b*c : " `echo "scale=2; $a+$b*$c" | bc -l`
echo "a*b+c : " `echo "scale=2; $a*$b+$c" | bc -l`
echo "c/a+b : " `echo "scale=2; $c/$a+$b" | bc -l`
echo "a%b+c : " `echo "scale=2; $a%$b+$c" | bc -l`


#STORING RESULT IN DICTIONARY
storeResult[0]=`echo "scale=2; $a+$b*$c" | bc -l`
storeResult[1]=`echo "scale=2; $a*$b+$c" | bc -l`
storeResult[2]=`echo "scale=2; $c/$a+$b" | bc -l`
storeResult[3]=`echo "scale=2; $a%$b+$c" | bc -l`


#DISPLAY DICTIONARY VALUES 
echo "${storeResult[@]}"


#STORING VALUES FROM DICTIONARY TO ARRAY
for((iter=0;iter<${#storeResult[@]};iter++))
do
	storeDictionaryValue[$iter]="${storeResult[$iter]}"
	echo "${storeDictionaryValue[$iter]}"
done


#RESULT IN DECENDING ORDER
for ((iter=0;iter<${#storeResult[@]}-1;iter++))
do
	for((iter2=$iter+1;iter2<${#storeResult[@]};iter2++))
	do
		if ((`echo "${storeDictionaryValue[$iter]}<${storeDictionaryValue[$iter2]}" | bc`==1 ))
		then
			temp="${storeDictionaryValue[$iter]}"
			storeDictionaryValue[$iter]="${storeDictionaryValue[$iter2]}"
			storeDictionaryValue[$iter2]=$temp
		fi
	done
done


#DISPLAY ARRAY VALUES
echo ${storeDictionaryValue[@]}


#RESULT IN ASENDING ORDER

