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
      position: absolute;
      width: 380px;
      right: 30px;
    }
  </style>

  </head>
  <body>
    $@
  </body>
</html>
EOF
