## apache aliases are fun

alias astrace="strace $(pidof httpd | sed 's/\([0-9]*\)/\-p \1/g')"
