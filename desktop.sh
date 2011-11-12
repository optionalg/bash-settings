#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

# Usage:
#   echo "zour ~/.bash/desktop.sh" >> ~/.bash_login

dir=`dirname "$BASH_SOURCE"`

zour "$dir/common/terminal.sh"

export PS1='\[\033[0;37m\]\w\[\033[00m\] \$ ' # override PS1 to a simpler format

zour "$dir/common/path.sh"
zour "$dir/common/misc-env.sh"
zour "$dir/common/misc-shortcuts.sh"
zour "$dir/common/git.sh"

zour "$dir/desktop/path.sh"
zour "$dir/desktop/misc-env.sh"
zour "$dir/desktop/editors.sh"
zour "$dir/desktop/work.sh"



