#!/bin/sh
cat ./macros.txt | while read -a line;
do
  #echo "s/${line[0]}/${line[1]}/"
  sed -i "s/${line[0]}/${line[1]}/" $1
done
