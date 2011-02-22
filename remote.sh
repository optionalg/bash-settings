# Usage:
#   echo ". ~/.bash/remote.sh" > ~/.bash_login

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh
. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh

. $dir/server/range.sh
. $dir/server/misc.sh

. $dir/common/git.sh

if [ -f $dir/hosts/hosts.sh ]; then
    . $dir/hosts/hosts.sh
fi

