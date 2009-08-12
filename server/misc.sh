# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


alias lampwatch="watch -n 30 'ps -ylC apache2,mysqld,varnishd,asterisk --sort:rss'"
