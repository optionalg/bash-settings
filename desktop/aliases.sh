alias chrome=google-chrome

# cd to ruby gem
function cdgem { cd $GEM_HOME/gems/$1; }
function vgem { cdgem $1 && gvim .; }

# projects directory
function p { cd ~/projects/$1; }
function vp { p $1 && gvim .; }

# task aliases
alias t=task
alias ts='task ls'
function tsp { task pro:$1 ls; }
function tap { task add pro:$@; }

# copy id_rsa.pub to clipboard
alias pubclip='cat ~/.ssh/id_rsa.pub | xclip -selection clipboard'
