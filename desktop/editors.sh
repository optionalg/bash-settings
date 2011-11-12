<<<<<<< HEAD
#!/bin/echo "This file is meant to be sourced from the command or .bashrc"


## if nano exists
if [[ -x `which nano` ]] ; then
export ASYNC_EDITOR="nano" 
export EDITOR="nano -w" 
export CVSEDITOR="nano -w" 
export SVN_EDITOR="nano -w"

# common replacements
alias pico='nano -w'
alias e='nano -w'

fi


# Espresso
alias esp="open -a Espresso"

=======
>>>>>>> 320c40d7431e9ae79713af7861a2eda13ea365dd
