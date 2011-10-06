#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

##### Git shortcuts

if [[ -x `which hub` ]] ; then

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

alias gsh='git show'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gdiff='git diff'
alias glog='git log' 
alias gd1='echo "git diff HEAD";  git diff HEAD'
alias gd2='echo "git diff HEAD^"; git diff HEAD^'
alias grmall="gs | grep 'deleted:' | awk '{print \$3}' | xargs git rm -f"

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

# Git submodule shortcuts

alias gsa='git submodule add'
alias gsu='git submodule update --init'

# Git svn shortcuts
alias gf='git svn fetch'
alias gfr='git svn fetch && git svn rebase'
alias gdc='git svn dcommit'
alias gnc='git svn fetch && git svn rebase && git svn dcommit'
alias gcn='git svn fetch && git svn rebase && git svn dcommit'

# Usage:
#   gc 'bug is fixed'                 # non-interactive mode
#   gc                                # interactive mode
#   Commit message: bug is fixed
#
function gc { 
  local commitmessage
  if [ "" = "$1" ]; then 
    echo -n 'Commit message: '
    commitmessage="$(ruby -e "puts gets")"
    git commit -m "$commitmessage"
  else
    git commit -m "$1"
  fi
}
