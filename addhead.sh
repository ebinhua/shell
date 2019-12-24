#!/bin/bash

num=$(head -1 $1| awk -F"," '{print NF}')
col=1
for i in `seq 2 $num`
do
	col=$col","$i
done
echo $col

#chmod a+w $1
sed  -i '1i'$col $1