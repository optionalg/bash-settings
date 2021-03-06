#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

#dir=`dirname "$BASH_SOURCE"`
#_dir="$dir" 
echo $dir

zour "common/terminal-colors.sh"
echo $dir


# Base styles and color palette
# Solarized colors
# https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
BOLD=$(tput bold)
RESET=$(tput sgr0)
SOLAR_YELLOW=$(tput setaf 136)
SOLAR_ORANGE=$(tput setaf 166)
SOLAR_RED=$(tput setaf 124)
SOLAR_MAGENTA=$(tput setaf 125)
SOLAR_VIOLET=$(tput setaf 61)
SOLAR_BLUE=$(tput setaf 33)
SOLAR_CYAN=$(tput setaf 37)
SOLAR_GREEN=$(tput setaf 64)
SOLAR_WHITE=$(tput setaf 254)

export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \w \[\033[01;34m\]\$\[\033[00m\] '
##export PS1="\[\033[0;33m\]\$(__git_ps1 '%s ')\[\033[00m\]$PS1"
style_user="\[${RESET}${SOLAR_ORANGE}\]"
style_host="\[${RESET}${SOLAR_YELLOW}\]"

style_path="\[${RESET}${SOLAR_GREEN}\]"

style_chars="\[${RESET}${SOLAR_WHITE}\]"

style_branch="${SOLAR_CYAN}"

if [[ "$SSH_TTY" ]]; then
  # connected via ssh
  style_host="\[${BOLD}${SOLAR_RED}\]"
elif [[ "$USER" == "root" ]]; then
  # logged in as root
  style_user="\[${BOLD}${SOLAR_RED}\]"
fi

is_git_repo() {
  $(git rev-parse --is-inside-work-tree &> /dev/null)
}

is_git_dir() {
  $(git rev-parse --is-inside-git-dir 2> /dev/null)
}

get_git_branch() {
  local branch_name

  # Get the short symbolic ref
  branch_name=$(git symbolic-ref --quiet --short HEAD 2> /dev/null) ||
  # If HEAD isn't a symbolic ref, get the short SHA
  branch_name=$(git rev-parse --short HEAD 2> /dev/null) ||
  # Otherwise, just give up
  branch_name="(unknown)"

  printf $branch_name
}

# Git status information
prompt_git() {
  local git_info git_state uc us ut st

  if ! is_git_repo || is_git_dir; then
    return 1
  fi

  git_info=$(get_git_branch)

  # Check for uncommitted changes in the index
  if ! $(git diff --quiet --ignore-submodules --cached); then
    uc="+"
  fi

  # Check for unstaged changes
  if ! $(git diff-files --quiet --ignore-submodules --); then
    us="!"
  fi

  # Check for untracked files
  if [ -n "$(git ls-files --others --exclude-standard)" ]; then
    ut="?"
  fi

  # Check for stashed files
  if $(git rev-parse --verify refs/stash &>/dev/null); then
    st="$"
  fi

  git_state=$uc$us$ut$st

  # Combine the branch name and state information
  if [[ $git_state ]]; then
    git_info="$git_info[$git_state]"
  fi

  printf "${SOLAR_WHITE} on ${style_branch}${git_info}"
}

#echo solarwhite ${SOLAR_WHITE}
# Set the terminal title to the current working directory
PS1="\[\033]0;\w\007\]"
# Build the prompt
PS1+="\n" # Newline
PS1+="${style_user}\u" # Username
PS1+="${style_chars}@" # @
PS1+="${style_host}\h" # Host
PS1+="${style_chars}: " # :
PS1+="${style_path}\w" # Working directory
PS1+="\$(prompt_git)" # Git details
PS1+="\n" # Newline
PS1+="${style_chars}\$ \[${RESET}\]" # $ (and reset color)

#echo $PS1
