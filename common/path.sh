#!/bin/echo "This file is meant to be sourced from the command or .bashrc"
if [[ -n "$DOTBASH_DEBUG" ]] ; then echo "common/path.sh imported"; fi


# All possible system-wide "bin" paths
<<<<<<< HEAD
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/sbin:/usr/sbin:$PATH"
=======
#export PATH="/usr/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$PATH"
>>>>>>> 320c40d7431e9ae79713af7861a2eda13ea365dd

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

## check for depot_tools
if [ -d ~/Code/depot_tools ]; then
        export PATH=~/Code/depot_tools:"$PATH"
fi


