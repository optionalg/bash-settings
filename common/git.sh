#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

dir=`dirname $BASH_SOURCE`
_dir=$dir 

zour $dir/bash-completion/git-completion.sh
zour $dir/git-shortcuts.sh

##export PS1="\[\033[0;33m\]\$(__git_ps1 '%s ')\[\033[00m\]$PS1"

dir=$_dir
