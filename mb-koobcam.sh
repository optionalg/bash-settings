# Usage:
#   echo ". ~/.bash/mb-koobcam.sh" >> ~/.bash_login

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh

#export PS1='\[\033[0;37m\]\w\[\033[00m\] \$ ' # override PS1 to a simpler format
# default
#export PS1='\h:\W \u\$'

export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \w \[\033[01;34m\]\$\[\033[00m\] '
#export PS1="\[\e[0;31m\]\u@\h:\w\$ \[\e[1;30m\]"

. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh

. $dir/desktop/path.sh
. $dir/desktop/misc-env.sh
. $dir/desktop/editors.sh
. $dir/desktop/work.sh

. $dir/common/git.sh
. $dir/common/mac.sh


alias rc='cd ~/.bash; $EDITOR ; source ~/.bash_login'
alias f5='source ~/.bash_login'

test -r /sw/bin/init.sh && . /sw/bin/init.sh
