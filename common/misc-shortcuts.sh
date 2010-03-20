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

alias l="ls"
alias lsd="ls -d"
alias la="ls -la"
alias ll="ls -l"

## -A breaks on Darwin
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lh'
alias l='ls $LS_OPTIONS -lh'
alias l?="l | g? \$1"

alias ..='cd ..'
alias cd..='cd ..'
alias cd-='cd -'
## needs -- escape so we can use - as the alias name
alias -- -="cd -"

alias cp="cp -i"
alias mv="mv -i"

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

alias cls='clear'

# quick network connectivity testing
alias fuck="traceroute 24.24.24.24"
alias shit="traceroute 23.23.23.23"

## df and di the way I like it
alias df="df -h"
alias di="di -d h"

## -w breaks on mac
##alias netstat='netstat -tuw'

# indent files
alias indent="indent -sob -bad -bap -bbb -bl -bli0 -nce -cli4 -cbi4 -ss -npcs -nprs -npsl -i4 -lp -nut -fc1 -c45 -nsob "

# rename all files in the current working directory to lower
alias tolower="for i in * ; do mv $i $(echo $i | tr [:upper:] [:lower:] ) ; done"


# writes "notes" to the desktop (possibly dangerous)
alias nn="echo creating new note; read $newnote ; touch '~/Desktop/$newnote' "

# aliased in time
alias utime="date +%s"
alias date="date '+%F %r %Z'"

alias rdesktop='rdesktop -b -N -a 24'


alias sa='~/.bash/sourcing'

alias psg="ps -efww| grep"

#alias psp="ps -o ppid,pid,pri,nice,size,tty,time,pgid,sid,ruser,cmd"

alias ppp="ps -o uid,pid,ppid,nice,c,stime,tty,time,cmd"


