#!/bin/echo "This file is meant to be sourced from the command or .bashrc"


alias envup="$NOT_ROOT env-update && source /etc/profile && source $HOME/.bashrc"


## glsa stuff
# check your system for affected GLSAs
alias glsa="glsa-check -t all"
# pretend and see what would be merged
alias glsa-see='glsa-check  -p $(glsa-check -t all)'
# apply required fixes
alias glsa-doit='glsa-check  -p $(glsa-check -t all)'


## rebuild the basic toolset
alias tooly="time sudo emerge --oneshot --ask --verbose --jobs 1 sys-devel/gcc-config virtual/libc sys-devel/binutils sys-devel/gcc sys-devel/libtool # libstdc++-v3"

alias eselect="$NOT_ROOT eselect"
alias emerge="$NOT_ROOT emerge"
alias ebuild="$NOT_ROOT ebuild"


alias eix-sync="$NOT_ROOT eix-sync"
#alias eix="$NOT_ROOT eix"
alias update-eix="$NOT_ROOT update-eix"

alias dispatch-conf="$NOT_ROOT dispatch-conf"

######################
RSYNC_CMD="rsync --delete -ave ssh"
alias qwerty="emerge --deep --newuse --reinstall=changed-use --update --verbose --tree --ask --complete-graph \${@}"
#emerge --update --newuse --deep @world

## eix-layman is lame
alias dirty="layman --verbose --sync-all && eix-sync && qwerty @world && dispatch-conf"
###

alias module-rebuild="$NOT_ROOT module-rebuild"

alias localepurge="$NOT_ROOT localepurge"
alias repcacheman="$NOT_ROOT repcacheman"

alias webapp-config="$NOT_ROOT webapp-config"


alias enet="$NOT_ROOT $EDITOR /etc/conf.d/net"
alias ewifi="$NOT_ROOT $EDITOR /etc/conf.d/wireless"
alias emake.conf="$NOT_ROOT $EDITOR /etc/make.conf"
alias gimme="$NOT_ROOT ~/bin/gimme"
alias unmask="$NOT_ROOT ~/bin/unmask"


alias gensync="$NOT_ROOT gensync"
alias layman="$NOT_ROOT layman"


alias eclean="$NOT_ROOT eclean"
alias eclean-dist="$NOT_ROOT eclean-dist"
alias eclean-pkg="$NOT_ROOT eclean-pkg"


alias messages="$NOT_ROOT tail -f  /var/log/mail.{err,info,log} /var/log/denyhosts  /var/log/http-replicator.log /var/log/messages /var/log/*log"

## daemons
alias chlog="$NOT_ROOT tail -f /var/log/cherokee/*log"
alias alog="$NOT_ROOT tail -f /var/log/apache*/*log"
alias namedlog="$NOT_ROOT tail -f /var/log/named/*log"
alias clog="$NOT_ROOT tail -f /var/log/cherokee/\${!}*log"


alias fixeth0="$NOT_ROOT /etc/init.d/net.eth0 restart"
alias fixeth1="$NOT_ROOT /etc/init.d/net.eth1 restart"

### use rc -s
## $ rc-s <init.d service> [start|stop|zap|other]
## for init stuff
alias rc-s="$NOT_ROOT rc -s"

# for linux boxen
# uncomment the following to activate bash-completion:
[[ -f /etc/profile.d/bash-completion ]] && source /etc/profile.d/bash-completion
[[ -f /etc/profile.d/bash-completion.sh ]] && source /etc/profile.d/bash-completion.sh


# source in some extras
[ -f ~/.gentoo/java-env ] && source ~/.gentoo/*-env

