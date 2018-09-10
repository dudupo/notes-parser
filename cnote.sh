#!/bin/sh
mdfile=`cat $1 | marked`
./template.sh $mdfile > "${1%.*}.html"
