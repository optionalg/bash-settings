#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

## vim, vi, nano

editor_choice=vim

## if nano exists
if [[ -x `which ${editor_choice}` ]] ; then
export ASYNC_EDITOR="${editor_choice}"
export EDITOR="${editor_choice}" 
export CVSEDITOR="${editor_choice}"
export SVN_EDITOR="${editor_choice}"

# common replacements
alias pico='${editor_choice}'
alias e='${editor_choice}'

fi


# Espresso
alias esp="open -a Espresso"
