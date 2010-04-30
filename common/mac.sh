####
# for mac ports

    if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi
##end mac ports # 
# sweet easy to remember way to flush the dns cache on your mac
alias flushdns="dscacheutil -flushcache"

if [ -d ~/Code/depot_tools ]; then
	export PATH=~/Code/depot_tools:"$PATH"
fi
