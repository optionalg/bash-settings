#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

#make ls have colors
alias ls="ls -G"

alias edit="open -a smultron "

# make top sort how i would like it
alias top="top -o cpu -O rprvt"

## fix ps and psg
unalias ps 2>/dev/null || alias ps="ps -axl"
unalias psg 2>/dev/null || alias psg="ps -axl |grep "

## fix up the dmesg
unalias dmesg 2>/dev/null || alias dmesg="$NOT_ROOT dmesg"


# sweet easy to remember way to flush the dns cache on your mac
alias flushdns="dscacheutil -flushcache"



###Add the following lines to your ~/.bash_profile file:
if [ -f `brew --prefix`/etc/bash_completion ]; then
   zour `brew --prefix`/etc/bash_completion
fi


##To install Homebrew's own completion script:
#ln -s "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"


####
# for mac ports
if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
fi
##end mac ports # 


## mactrash provides alias rm='del'
## it also provides emptytrash
## include our copy of mactrash
if [ -f ~/Code/mactrash/trash ]; then
	. ~/Code/mactrash/trash
fi


## install homebrew using ruby from Xcode3
## https://github.com/mxcl/homebrew/wiki/installation
alias homebrewInstall='ruby -e "$(curl -fsSLk https://gist.github.com/raw/323731/install_homebrew.rb)"'


#if [ -f `brew --prefix`/etc/bash_completion ]; then
#    . `brew --prefix`/etc/bash_completion
#fi

#To install Homebrew's own completion script:
#  ln "/usr/local/Library/Contributions/brew_bash_completion.sh" "/usr/local/etc/bash_completion.d"


## open dnbradio.com/hi.pls because I am lazy and it feels right, it's using VLC.app
alias dnbradio='open -a VLC.app --args --play-and-stop --random --open http://dnbradio.com/hi.pls'

# Check that terminfo exists before changing TERM var to xterm-256color
# Prevents prompt flashing in Mac OS X 10.6 Terminal.app
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
      export TERM='xterm-256color'
fi

