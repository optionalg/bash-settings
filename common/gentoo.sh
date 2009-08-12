
alias envup="$NOT_ROOT env-update && source /etc/profile && source $HOME/.bashrc"

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

# really bad aliases
alias sshd.init="$NOT_ROOT /etc/init.d/sshd"
alias apache2.init="$NOT_ROOT /etc/init.d/apache2"
alias mysql.init="$NOT_ROOT /etc/init.d/mysql"
alias named.init="$NOT_ROOT /etc/init.d/named"
alias cron.init="$NOT_ROOT /etc/init.d/vixie-cron"
alias denyhosts.init="$NOT_ROOT /etc/init.d/denyhosts"
alias distccd.init="$NOT_ROOT /etc/init.d/distccd"
alias vmware.init="$NOT_ROOT /etc/init.d/vmware"
alias http-replicator.init="$NOT_ROOT /etc/init.d/http-replicator"
alias atalk.init="$NOT_ROOT /etc/init.d/atalk"
alias tor.init="$NOT_ROOT /etc/init.d/tor"
alias privoxy.init="$NOT_ROOT /etc/init.d/privoxy"
alias iptables.init="$NOT_ROOT /etc/init.d/iptables"

