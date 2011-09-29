#!/bin/echo "This file is meant to be sourced from the command or .bashrc"
# Usage:
#   echo ". ~/.bash/server.sh" >> ~/.bash_login


export PS1='\[\033[01;35m\]\u@\h\[\033[01;31m\] \w \[\033[01;34m\]\$\[\033[00m\] '

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh
. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh
. $dir/common/ssh.sh

. $dir/common/linux.sh
. $dir/common/lvm.sh
. $dir/common/mysql.sh

. $dir/common/gentoo.sh
. $dir/common/ftp.sh

. $dir/server/range.sh
. $dir/server/misc.sh

. $dir/server/editors.sh
. $dir/server/ejabber.sh 

. $dir/common/git.sh
. $dir/common/git-shortcuts.sh

test -r /sw/bin/init.sh && . /sw/bin/init.sh
