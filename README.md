# HOW TO

###  1. Clone this repo:
	git clone git://github.com/px/bash-settings.git ~/.bash/

	#### OR to your own Code directory

	`mkdir -p ~/tmp/Code/`

	`git clone git://github.com/px/bash-settings.git ~/tmp/Code/bash-settings/`

	`cd ~/ ; ln -sf ~/tmp/Code/bash-settings/ .bash ; ./.bash/sourcing`

###  2. source or run "sourcing" from your ~/.bash_login for Linux (or ~/.bashrc or Mac):

	##source from .bashrc
	`[ -f ~/.bash/sourcing ] && . ./.bash/sourcing`

	##source from command line
	`. ~/.bash/sourcing`

###  3. reload the shell

## DIRECTORY STRUCTURE

  /*.sh      # particular configuration (my-server.sh, my-macbook.sh etc.)
  /common    # environment-independant settings and aliases
  /desktop   # settings relevant to desktop computers (GNU/Linux or Mac OSX)
  /server    # settings relevant to servers (mostly Linux-related) 

# Files are stored in UTF8
