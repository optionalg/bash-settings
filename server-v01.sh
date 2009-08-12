# Usage:
#   echo ". ~/.bash/server.sh" >> ~/.bash_login

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh
. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh

. $dir/common/linux.sh
. $dir/common/lvm.sh

. $dir/common/gentoo.sh
. $dir/common/ftp.sh

. $dir/server/range.sh
. $dir/server/misc.sh

. $dir/server/ssh.sh
. $dir/server/editors.sh
. $dir/server/ejabber.sh 

. $dir/common/git.sh

test -r /sw/bin/init.sh && . /sw/bin/init.sh
