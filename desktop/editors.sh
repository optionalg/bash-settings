#!/bin/echo "This file is meant to be sourced from the command or .bashrc"


## if nano exists
if [[ -x `which nano` ]] ; then
export ASYNC_EDITOR="nano" 
export EDITOR="nano -w" 
export CVSEDITOR="nano -w" 
export SVN_EDITOR="nano -w"

# common replacements
alias pico='nano -w'
alias e='nano -w'

fi


# Espresso
alias esp="open -a Espresso"
