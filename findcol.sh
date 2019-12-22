#!/bin/bash

# this script is for finding the colum number of string patter in a csv file
# two arg parameter are need
# arg1 is filename
# arg2 is the string pattern

if [[ -n "$2" ]] #length of string $2 is nozero

then

	file=$1
	echo "filename:" $file
	echo "find string pattern:" $2

	row=$(wc -l $file|awk '{print $1}')
	echo "the total row of "$file "is:" $row


	colum=$(awk -F ',' '{for(i=1;i<NF;i++)if($i ~ "'$2'"){print i}}' $file)
	echo "the string found in colum:" $colum

	grep $2 $file	

else

	echo "please input arg2: string pattern"

fi






