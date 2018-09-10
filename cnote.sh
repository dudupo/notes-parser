#!/bin/sh
mdfile=`cat $1 | marked`
./template.sh $mdfile > "temp${1%.*}.html"
mjpage --dollars < "temp${1%.*}.html" > "${1%.*}.html"
rm "temp${1%.*}.html"
