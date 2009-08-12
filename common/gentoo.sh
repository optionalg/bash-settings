alias eselect="$NOT_ROOT eselect"
alias emerge="$NOT_ROOT emerge"
alias ebuild="$NOT_ROOT ebuild"


alias eix-sync="$NOT_ROOT eix-sync"
#alias eix="$NOT_ROOT eix"
alias update-eix="$NOT_ROOT update-eix"

alias dispatch-conf="$NOT_ROOT dispatch-conf"

######################
RSYNC_CMD="rsync --delete -ave ssh"
alias qwerty="emerge --deep --newuse --reinstall changed-use --update --verbose --tree --ask --complete-graph $*"

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
alias alog="$NOT_ROOT tail -f /var/log/apache*/*log"
alias namedlog="$NOT_ROOT tail -f /var/log/named/*log"



alias fixeth0="$NOT_ROOT /etc/init.d/net.eth0 restart"
alias fixeth1="$NOT_ROOT /etc/init.d/net.eth1 restart"

