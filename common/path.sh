# All possible system-wide "bin" paths
export PATH="$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/mysql/bin"

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi
