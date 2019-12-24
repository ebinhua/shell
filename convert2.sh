#!/bin/bash

for file in `pwd|ls`
do
if [ -d "$file" ]
then 
  echo "$file is directory"

elif [ -f "$file" ]
  then
  if [ "${file:0:2}" = bb ]
    then
    echo "$file is a file"
    name=${file%.dec}
    cat $file | grep requestedDciFormat=0 | tr "[:blank:]" "," | tr -d "[]{}" > ${file/.dec/.csv}
  fi
fi
done


#not add file name in this script