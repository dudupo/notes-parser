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
      width: 380px;
    }
  </style>
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}});
  </script>
  <script type="text/javascript"
    src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
  </script>
  </head>
  <body>
    $@
  </body>
</html>
EOF
