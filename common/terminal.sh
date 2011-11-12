#!/bin/echo "This file is meant to be zourd from the command or .bashrc"

if [[ -z "$DOTBASH_DEBUG" ]] ; then echo "common/terminal.sh imported"; fi
<<HELP

This file needs a lot of love.

HELP



## Set our name and sytem type for later.
#myName=$(uname -n)
#mySystem=$(uname -s)

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm*|rxvt*)
<<<<<<< HEAD
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[0;32m\]\u@\h\[\033[00m\] \[\033[01;33m\]\w\[\033[00m\] \$ '
=======
    PS1='${debian_chroot:+($debian_chroot)}\[\033[0;32m\]\u@\h\[\033[00m\] \[\033[00m\]\w\[\033[00m\] \$ '
>>>>>>> 320c40d7431e9ae79713af7861a2eda13ea365dd
    ;;
*)
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$ '
    ;;
esac

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

umask 022

if [ "$TERM" = dtterm ] ; then
    export TERM=vt100
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
fi

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Must set this option, else script will not expand aliases.
#shopt -s expand_aliases

# be verbose very verbose
#shopt -v


# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

alias ess='less -r'
alias less='less -r'
alias more='less -r'  #less is more :)


# Grep history
function h() {
  history | grep "$1"
}


alias eecho="echo" ## Fix the echo back
NOCOLOR=0
if [ $NOCOLOR == false ]; then
        alias eecho="echo -n '\>\>'; echo '$*' "
else
	if [[ $mySystem == "Darwin" ]]; then
        	 alias eecho='echo -e "\033[1;34m>\033[1;36m>\033[1;35m>\033[0m ${*}"'
	elif [[ $mySystem == "Linux" ]]; then
        	 alias eecho='echo -e "\033[1;34m>\033[1;36m>\033[1;35m>\033[0m ${*}"'
	fi
#         alias eecho='echo -ne "\033[1;34m>\033[1;36m>\033[1;35m>\033[0m "; echo "$*" '
fi


# figure out if this is being zourd by root
NOT_ROOT=""
ROOT_UID=0 # uid of root
if [ "$UID" -ne "$ROOT_UID" ]
then
#        eecho "~/.bash/ zourd by $USER"
        NOT_ROOT="sudo"
        # make s- act like sudo with bash completetion
##        complete -F _root_command $filenames s-
else
echo >/dev/null
#        eecho "~/.bash/ zourd by $USER"
fi


# Change the window title of X terminals
case $TERM in
        xterm*|rxvt|Eterm|eterm)
                PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
                ;;
        screen)
                PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
                ;;
esac


