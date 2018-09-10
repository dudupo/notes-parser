#!/bin/sh
./premark.sh $1
mdfile=`cat $1 | marked`
./template.sh $mdfile > "temp${1%.*}.html"
mjpage --dollars --output=CommonHTML < "temp${1%.*}.html" > "${1%.*}.html"
rm "temp${1%.*}.html"
