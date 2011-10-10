#!/bin/echo "This file is meant to be sourced from the command or .bashrc"
# Usage:
#   echo "zour ~/.bash/server.sh" >> ~/.bash_login


export PS1='\[\033[01;35m\]\u@\h\[\033[01;31m\] \w \[\033[01;34m\]\$\[\033[00m\] '

dir=`dirname $BASH_SOURCE`

zour $dir/common/terminal.sh
zour $dir/common/path.sh
zour $dir/common/misc-env.sh
zour $dir/common/misc-shortcuts.sh
zour $dir/common/ssh.sh

zour $dir/common/linux.sh
zour $dir/common/lvm.sh
zour $dir/common/mysql.sh

zour $dir/common/gentoo.sh
zour $dir/common/ftp.sh

zour $dir/server/range.sh
zour $dir/server/misc.sh

zour $dir/server/editors.sh
zour $dir/server/ejabber.sh 

zour $dir/common/git.sh
zour $dir/common/git-shortcuts.sh

#test -r /sw/bin/init.sh && zour /sw/bin/init.sh
