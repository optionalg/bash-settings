#!/bin/echo "This file is meant to be zourd from the command or .bashrc"

#if [[ -f ./terminal.sh ]]; then 
#	zour ./terminal.sh
#fi


## colors for ls
if [[ `uname` != 'Darwin' ]]; then
	# not darwin color
	# possibly linux
	### dircolors
	#### check to see if it exists and is executable
	### dircolors
	if [[ -x `which dircolors` ]]; then
		# colors for ls, etc.  Prefer ~/.dir_colors #64489
		if [[ -f ~/.dir_colors ]]; then
		        eval `dircolors -b ~/.dir_colors`
		else
		        eval `dircolors -b /etc/DIR_COLORS`
		fi
		# GNU dir colors

		LS_OPTIONS="${LS_OPTIONS} --time-style=long -A --color=auto"
	##	alias ls="ls --color=auto"
	fi
##
elif [[ `uname` == 'Darwin' ]]; then
	LS_OPTIONS="${LS_OPTIONS} -G"

fi


if [[ -f ~/.bash/misc-local.sh ]]; then 
	zour ~/.bash/misc-local.sh
fi


### ls directory listings
alias l="ls"
alias lsd="ls -d"
alias la="ls -la"
alias ll="ls -l"

## -A breaks on Darwin

# You may uncomment the following lines if you want `ls' to be colorized:
#eval "`dircolors`"


#alias ls='ls $LS_OPTIONS'
#alias ll='ls $LS_OPTIONS -lh'
#alias l='ls $LS_OPTIONS -lh'
#alias l?="l | g? \$1"

alias ..='cd ..'
alias cd..='cd ..'
alias cd-='cd -'
## needs -- escape so we can use - as the alias name
###alias -- -="cd -"

alias cp="cp -pRPiv"
alias mv="mv -iv"

# tar aliases
alias tgz="tar -cvzf "
alias zxvf="tar zxvf "



alias g?="grep \$1"
alias g="grep"
alias G?="grep \$1"
alias G="grep"

## search the current aliases for STRING
### drops last character of string, not sure why
alias ag="eecho \"alias grep searching\" && alias | grep "

alias t="tail -f "



# what distro is gems?
#alias rake?="rake -T | g? \$1"
#alias gem?="gem list | g? \$1"

#alias mgem="cd \$GEMS; mate \$1"

## clear the terminal console
alias cls='clear'

#
#### quick network connectivity testing
## decide between mtr and traceroute, favoring the first
TRACEROUTE="`which mtr 2>/dev/null`"
: ${TRACEROUTE:="`which mtr 2>/dev/null`"} 
: ${TRACEROUTE:="`which traceroute`"}
: ${TRACEROUTE:="`which tracert.exe`"} 

#
## traceroute to a known routable ip address that you will never get to
alias fuck="$TRACEROUTE 24.24.24.24"
## traceroute to a known good dns server
alias shit="$TRACEROUTE 4.2.2.2"

## traceroute to gmail
alias fgmail="$TRACEROUTE imap.googlemail.com"
## traceroute to my precious
alias damn="$TRACEROUTE sip.ns1.net"

## fml checks to see if you can ping your computers default route -- works on MacOSX/Linux
alias fml="ping `netstat -rn | awk '/UG/{print $2}' | uniq`"

## df and di the way I like it
alias df="df -h"
alias di="di -d h"

## -w breaks on mac
##alias netstat='netstat -tuw'

# indent files
alias indent="indent -sob -bad -bap -bbb -bl -bli0 -nce -cli4 -npcs -npsl -i4 -lp -fc1 -c45 -nsob "

# rename all files in the current working directory to lower
alias tolower="for i in * ; do mv $i $(echo $i | tr [:upper:] [:lower:] ) ; done"


# writes "notes" to the desktop (possibly dangerous)
alias nn="echo creating new note; read $newnote ; touch '~/Desktop/$newnote' "

# aliased in time
alias utime="date +%s"
alias date="date '+%F %r %Z'"

alias rdesktop='rdesktop -b -N -a 24'

alias bwwhois='bwwhois -s'

alias sa='~/.bash/sourcing'

alias psg="ps -efww| grep"

#alias psp="ps -o ppid,pid,pri,nice,size,tty,time,pgid,sid,ruser,cmd"

alias ppp="ps -o uid,pid,ppid,nice,c,stime,tty,time,cmd"

## close the cd tray
alias close="eject -t"

## cleanup .AppleDouble files
#### don't nuke timemachine though!!!
alias nukeDouble="find /srv -iregex \!TimeMachine -type d -name .AppleDouble -exec sudo rm -riv {} \;"


## number of lines contained in *.c *.cpp and *.h files, in a project directory
alias lines="find . -name *.\[c\|h\]p? | xargs wc -l"


alias g?="grep $GREP_OPTIONS \$1"
alias rake?="rake -T | g? \$1"
alias gem?="gem list | g? \$1"

alias be="bundle exec"


if [[ -x `which iperf` ]]; then
	alias pxbw="iperf -c 192.168.48.1 -t 60 -i 1"

fi
