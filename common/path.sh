# All possible system-wide "bin" paths
export PATH="$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/sbin:/usr/sbin"

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi

## check for depot_tools
if [ -d ~/Code/depot_tools ]; then
        export PATH=~/Code/depot_tools:"$PATH"
fi


