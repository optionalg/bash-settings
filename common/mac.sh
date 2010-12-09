####
# for mac ports

    if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi
##end mac ports # 

# sweet easy to remember way to flush the dns cache on your mac
alias flushdns="dscacheutil -flushcache"

## include our copy of mactrash
	if [ -f ~/Code/mactrash/trash ]; then
		. ~/Code/mactrash/trash
	fi

