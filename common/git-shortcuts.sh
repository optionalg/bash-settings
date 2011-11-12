#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

##### Git shortcuts

if [[ -x `which hub 2>/dev/null` ]] ; then
	# trying out 'hub'
	alias git=hub
fi

## neat status
alias gs='git status; git submodule status'
## quick git add
alias ga='git add'

##### quick commits
## fancy, but needs a commit msg paramater. ex. gca "this is my commit"
#alias gc='git commit -m'  #    (See function below) !!!! it's an actual function
## commit and autostage files
alias gca='git commit -a'
## above and ammend previous commit
alias gcaa='gca --amend'

## magic add _ALL_ and commit
alias gcaA='echo "magic commit! are you sure?(YES to continue)" ; read CHK ; if [ $CHK = "YES" ] ; then ga -A && gca ; fi'
############## ^- see git-add for specs

## moving stuff / file management
alias gull='git pull'
alias gush='git push'
#alias gp='git pull && git push'
alias gp='gull && gush'

alias gc='git commit -m'
alias gca='git commit -a -m'
alias gull='git pull --rebase'
alias gush='git push'
alias gf='git fetch'
alias gm='git merge'

alias gsh='git show'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'

alias gdiff='git diff'
alias glog='git log' 

alias gst='git stash'
alias gstp='git stash pop'

alias gd1='echo "git diff HEAD";  git diff HEAD'
alias gd2='echo "git diff HEAD^"; git diff HEAD^'
alias grmall="git status | grep 'deleted:' | awk '{print \$3}' | xargs git rm -f"

## simple push/pull on github
alias githubpp=''

# on my macbook pro only 'h', 'l', 'w', 'x' are reserved
alias s='gs'
alias a='ga'
alias c='gc'
alias ca='gca'
alias u='gull'
alias p='gush'
alias g='gl'
alias b='gb'
alias o='gco'
alias d='gd'
alias d1='gd1'
alias d2='gd2'

# this command loads one letter aliases on demand
#git_shortcuts_dir=`dirname $BASH_SOURCE`
#alias gitoneletteraliases=". $git_shortcuts_dir/git-one-letter-aliases.sh"

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
