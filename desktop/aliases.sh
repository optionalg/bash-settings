alias chrome=google-chrome

function p { cd ~/projects/$1; }
function vp { p $1 && gvim .; }

# task aliases
#
alias t=task
alias ts='task ls'
function tsp { task pro:$1 ls; }
