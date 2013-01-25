#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

#dir=`dirname "$BASH_SOURCE"`
#_dir="$dir" 
echo $dir
zour "$dir/common/bash-completion/git-completion.sh"
echo $dir
zour "$dir/common/git-shortcuts.sh"
echo $dir

##export PS1="\[\033[0;33m\]\$(__git_ps1 '%s ')\[\033[00m\]$PS1"

dir="$_dir"
