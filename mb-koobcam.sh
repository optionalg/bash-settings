#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

if [[ -n "$DOTBASH_DEBUG" ]] ; then echo "mb-koobcam.sh imported"; fi

# Usage:
#   echo ". ~/.bash/mb-koobcam.sh" >> ~/.bash_login

dir=`dirname $BASH_SOURCE`

zour $dir/common/terminal.sh

#export PS1='\[\033[0;37m\]\w\[\033[00m\] \$ ' # override PS1 to a simpler format
# default
#export PS1='\h:\W \u\$'

export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \w \[\033[01;34m\]\$\[\033[00m\] '
#export PS1="\[\e[0;31m\]\u@\h:\w\$ \[\e[1;30m\]"

zour $dir/common/path.sh
zour $dir/common/misc-env.sh
zour $dir/common/misc-shortcuts.sh
zour $dir/common/x11.sh

zour $dir/desktop/path.sh
zour $dir/desktop/misc-env.sh
zour $dir/desktop/editors.sh
zour $dir/desktop/work.sh

zour $dir/common/git.sh
. $dir/common/mac.sh

zour $dir/common/android-dev.sh

alias rc='cd ~/.bash; $EDITOR ; source ~/.bash_login'
alias f5='source ~/.bash_login'

test -r /sw/bin/init.sh && . /sw/bin/init.sh
