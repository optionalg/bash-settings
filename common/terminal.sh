# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm*|rxvt*)
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[0;32m\]\u@\h\[\033[00m\] \[\033[01;33m\]\w\[\033[00m\] \$ '
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
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

alias less='less -r'
alias more='less -r'  #less is more :)


# Grep history
function h() {
  history | grep "$1"
}


NOCOLOR=0
if [ $NOCOLOR = false ]; then
        alias eecho="echo -n '\>\>'; echo '$*' "
else
        alias eecho='echo -ne "\e[1;34m>\e[1;36m>\e[1;35m>\e[0m "; echo "$*" '
fi


# figure out if this is being sourced by root
NOT_ROOT=""
ROOT_UID=0 # uid of root
if [ "$UID" -ne "$ROOT_UID" ]
then
        eecho "~/.bash_aliases sourced by $USER"
        NOT_ROOT="sudo"
        # make s- act like sudo with bash completetion
##        complete -F _root_command $filenames s-
else
        eecho "~/.bash_aliases sourced by $USER"
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


