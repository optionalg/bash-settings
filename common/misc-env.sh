#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

if [[ -n "$DOTBASH_DEBUG" ]] ; then echo "common/misc-env.sh imported"; fi

## grep options
export GREP_OPTIONS='--color=auto'
<<<<<<< HEAD
export GREP_COLOR=36

## ls options
export LS_OPTIONS='-h'

# userland bash env stuff
export USER_BASH_COMPLETION_DIR=~/.bash/common/bash-completion
=======
export LS_OPTIONS=' -G --color=auto'

alias f5='source ~/.bashrc'
alias .bash='cd ~/.bash'
>>>>>>> 320c40d7431e9ae79713af7861a2eda13ea365dd
