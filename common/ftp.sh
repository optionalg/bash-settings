
if [[ `uname` != 'Darwin' ]]; then

# doesnt work on mac
alias ftp="ftp -i -z nossl "

elif [[ `uname` == 'Darwin' ]]; then

alias ftp="ftp -i "

fi
