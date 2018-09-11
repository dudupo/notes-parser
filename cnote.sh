#!/bin/sh

templatediff=`git diff ./template.html`
if [[ ! -z "$templatediff" ]]; then
  echo -e "template have changed :"
  git diff ./template.html
  ./build.sh
  git add ./template.html ./template.sh
fi

./premark.sh $1
mdfile=`cat $1 | marked --highlight`
./template.sh $mdfile > "${1%.*}temp.html"
mjpage --dollars --output=CommonHTML < "${1%.*}temp.html" > "${1%.*}.html"
rm "${1%.*}temp.html"
