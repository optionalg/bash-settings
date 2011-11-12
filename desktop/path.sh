#!/bin/echo "This file is meant to be sourced from the command or .bashrc"

if [[ -d /usr/local/jruby/bin ]]; then
export PATH="/usr/local/jruby/bin:$PATH"             # jruby
fi

if [[ -d /usr/local/ree/bin ]]; then
export PATH="/usr/local/ree/bin:$PATH"               # ruby ee
fi

if [[ -d /usr/local/mysql/bin ]]; then
export PATH="/usr/local/mysql/bin:$PATH"             # mysql
fi

if [[ -d /opt/local/lib/postgresql83/bin ]]; then
export PATH="/opt/local/lib/postgresql83/bin:$PATH"  # postgresql
fi

if [[ -d /opt/android-sdk/platform-tools/ ]]; then 
export PATH=$PATH:/opt/android-sdk/platform-tools/
fi
