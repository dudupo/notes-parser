#!/bin/sh
git checkout temp
templatediff=`git diff ./template.html`
if [[ ! -z "$templatediff" ]]; then
  echo -e "template have changed :"
  git diff ./template.html
  ./build.sh
  git add ./template.html
fi

./premark.sh $1
mdfile=`cat $1 | marked`
./template.sh $mdfile > "temp${1%.*}.html"
mjpage --dollars --output=CommonHTML < "temp${1%.*}.html" > "${1%.*}.html"
rm "temp${1%.*}.html"
