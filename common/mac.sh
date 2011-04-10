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

## install homebrew using ruby from Xcode3
## https://github.com/mxcl/homebrew/wiki/installation
alias homebrewInstall='ruby -e "$(curl -fsSLk https://gist.github.com/raw/323731/install_homebrew.rb)"'
