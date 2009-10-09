# Usage:
#   echo ". ~/.bash/server.sh" >> ~/.bash_login

## default PS1 on gentoo
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh
. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh
. $dir/common/ssh.sh

. $dir/common/linux.sh
. $dir/common/lvm.sh
. $dir/common/md.sh

. $dir/common/centos.sh
. $dir/common/ftp.sh

. $dir/server/range.sh
. $dir/server/misc.sh

. $dir/server/editors.sh

. $dir/common/git.sh

test -r /sw/bin/init.sh && . /sw/bin/init.sh

#alias bwwhois='/usr/bin/bwwhois -s'
