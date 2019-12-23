#!/bin/bash

# replace the string in file
sed -e 's/true/1/' -e 's/false/0/' file

# more delimiter in awk
awk -F '[,.]' '{print $5}' file
awk 'BEGIN{FS="[,@]";OFS=","}{print $0}' file

