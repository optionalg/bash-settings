#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

## apache aliases are fun

alias astrace="strace $(pidof httpd | sed 's/\([0-9]*\)/\-p \1/g')"
