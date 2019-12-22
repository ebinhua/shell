#!/bin/bash
# vlookup columun in file1
#key columun in file1 is index of w[$index], in file2 is the index of "a==$index"
#the wanted columun in file1 is assign to w[$index]=$1","$2....
#arg1 is file1
#arg2 is file2
#below vlookup condition : $1 in file2 == $4 in file1
#in file1 NR==FNR, in file2 NR>FNR


if [ -z "$2" ] || [ -z "$1" ]

then

	echo "please input filename"

else 

	awk 'BEGIN{FS=OFS=","}NR==FNR{w[$4]=$1","$2}NR>FNR{for(a in w)if(a==$1){print $1,$2,$3,w[a]}}' $1 $2

fi


