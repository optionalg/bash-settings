#!/bin/echo "This file is meant to be sourced from the command or .bashrc"


alias rmmod="$NOT_ROOT rmmod "
alias modprobe="$NOT_ROOT modprobe "


## look in the Xorg error log for the Errors and Warnings
alias xorgerror='egrep "^\(WW|EE\)" /var/log/Xorg.0.log'

## play pick a distro



alias ath0="ifconfig ath0"
alias eth0="ifconfig eth0"


### whois ip, email

## save iptables state
## add log 5/hr
## drop/block ip
## save iptables state
## 208.80.194.30
## 95.108.150.235
alias QuickBlock="ipt_log $1 && ipt_drop $1 $2*"
##
## log this ip
## block this ip

## save iptables state
## email

## [-b bcc-addr] [-c cc-addr] [-s subject]            to-addr
alias ipt_email="mail -c logs+iptables@ns1.net -s \"bad stuff\" px@ns1.net"
alias ipt_log="$not_root iptables -A INPUT -s $1 -m limit --limit 5/hour -j LOG --log-prefix \"$2* $1\""
alias ipt_drop="$not_root iptables -A INPUT -s $1 -j DROP"

#[9209:519904] -A INPUT -s 220.181.0.0/16 -m limit --limit 5/hour -j LOG --log-prefix "baiduhttp abuse 220.181.0.0/1"
#[15402:858484] -A INPUT -s 220.181.0.0/16 -j DROP
