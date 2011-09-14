# Git shortcuts
alias gs='git status; git submodule status'
alias ga='git add'
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
alias gd1='echo "git diff HEAD";  git diff HEAD'
alias gd2='echo "git diff HEAD^"; git diff HEAD^'
alias grmall="git status | grep 'deleted:' | awk '{print \$3}' | xargs git rm -f"

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
