#!/bin/sh

html=`cat ./template.html`
eof="EOF"
cat << EOF > ./template.sh
#!/bin/sh
cat << EOF
$html
$eof
EOF
