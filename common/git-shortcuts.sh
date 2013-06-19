#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

##### Git shortcuts

## use the github program if we have it
if [[ -x `which hub 2>/dev/null` ]] ; then
	# trying out 'hub'
	alias git=hub
fi

## neat status
alias gs='git status; git submodule status'
## quick git add
alias ga='git add'

##### quick commits
alias gc='git commit -m'          ## add your own message as next argument
alias gca='git commit -a -m'      ## all changed files, and ^^^
alias gcaa='gca --amend'          ## amend previous commit and ^^^
## fancy, but needs a commit msg paramater. ex. gca "this is my commit"
#alias gc='git commit -m'  #    (See function below) !!!! it's an actual function
## commit and autostage files
#alias gca='git commit -a'
## above and ammend previous commit

## magic add _ALL_ and commit
alias gcaA='echo "magic commit! are you sure?(YES to continue)" ; read CHK ; if [ $CHK = "YES" ] ; then ga -A && gca ; fi'
############## ^- see git-add for specs

## moving stuff / file management
alias gull='git pull'
alias gush='git push'
#alias gp='git pull && git push'
alias gp='gull && gush'
#alias gull='git pull --rebase'


## fetching
alias gf='git fetch'
alias gfu='git fetch upstream'
alias gm='git merge'

alias gsh='git show'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout' ## append your own
alias gd='git diff'

## diff 
alias gdiff='gd'
## log history
alias glog='gl' 

alias gst='git stash'         ## stash 
alias gstp='git stash pop'

alias gd1='echo "git diff HEAD";  git diff HEAD'
alias gd2='echo "git diff HEAD^"; git diff HEAD^'
alias grmall="git status | grep 'deleted:' | awk '{print \$3}' | xargs git rm -f"


# this command loads one letter aliases on demand
git_shortcuts_dir=`dirname $BASH_SOURCE`
alias gitoneletteraliases=". $git_shortcuts_dir/git-one-letter-aliases.sh"

# Git submodule shortcuts
alias gsa='git submodule add'
alias gsu='git submodule update --init'

# Git svn shortcuts
alias gsf='git svn fetch'
alias gsfr='git svn fetch && git svn rebase'
alias gsdc='git svn dcommit --add-author-from --use-log-author'
alias gssy='gsfr && gsdc'

# Usage:
#   gc 'bug is fixed'                 # non-interactive mode
#   gc                                # interactive mode
#   Commit message: bug is fixed
#
#function gc {
#  local commitmessage
#  if [ "" = "$1" ]; then
#    echo -n 'Commit message: '
#    commitmessage="$(ruby -e "puts gets")"
#    git commit -m "$commitmessage"
#  else
#    git commit -m "$1"
#  fi
#}
