#!/bin/sh
cat << EOF
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  <style>
    body {
      direction:  rtl;
      font-family: david;
    }
    h2 {
      color:#ff6699;
    }
    div {
      position: relative;
      width: 380px;
      right: 60px;
    }
    div.highlight {
      direction: ltr;
    }
  </style>

  </head>
  <body>
    $@
  </body>
</html>
EOF
