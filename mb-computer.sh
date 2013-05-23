#!/bin/echo "This file is meant to be zour'd or sourced from the command or .bashrc"

if [[ -n "$DOTBASH_DEBUG" ]] ; then echo "mb-koobcam.sh imported"; fi

# Usage:
#   echo ". ~/.bash/mb-koobcam.sh" >> ~/.bash_login

export dir=`dirname "$BASH_SOURCE"`
#readonly dir
#echo $dir

zour "$dir/common/terminal.sh"
##zour "$dir/common/bash-completion/git-completion.sh"
#export PS1='\[\033[0;37m\]\w\[\033[00m\] \$ ' # override PS1 to a simpler format
# default
#export PS1='\h:\W \u\$'

#####export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \w \[\033[01;34m\]\$\[\033[00m\] '
#export PS1="\[\e[0;31m\]\u@\h:\w\$ \[\e[1;30m\]"
#echo $dir
zour "$dir/common/mac.sh"
#echo $dir
zour "$dir/common/path.sh"
#echo $dir
zour "$dir/common/android-dev.sh"
#echo $dir
zour "$dir/common/misc-env.sh"
#echo $dir
zour "$dir/common/misc-shortcuts.sh"
#zour "$dir/common/x11.sh"
#echo $dir

zour "$dir/desktop/path.sh"
#echo $dir
zour "$dir/desktop/misc-env.sh"
#echo $dir
zour "$dir/desktop/editors.sh"
#echo $dir
zour "$dir/desktop/work.sh"
#echo $dir

zour "$dir/common/git.sh"
#echo $dir
zour "$dir/common/bash-prompt.sh"

alias rc='cd ~/.bash; $EDITOR ; source ~/.bash_login'
alias f5='source ~/.bash_login'

## some old ports thing
test -r /sw/bin/init.sh && . /sw/bin/init.sh
