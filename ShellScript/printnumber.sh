#!/bin/bash

echo "enter max range"
read Num
#test2 = {1..$1}
for ((c=1; c<=$Num; c++))
do 
	echo $c
done
