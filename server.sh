#!/bin/echo "This file is meant to be sourced from the command or .bashrc"
# Usage:
#   echo "zour ~/.bash/server.sh" >> ~/.bash_login

dir=`dirname "$BASH_SOURCE"`

zour "$dir/common/terminal.sh"
zour "$dir/common/path.sh"
zour "$dir/common/misc-env.sh"
zour "$dir/common/misc-shortcuts.sh"

zour "$dir/server/range.sh"
zour "$dir/server/misc.sh"

zour "$dir/common/git.sh"

