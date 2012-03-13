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

## fix ip_save when done
# #
## log this ip
## block this ip

## save iptables state
alias ipt_save="$NOT_ROOT /etc/init.d/iptables save"
## email

echo $NOT_ROOT
NOT_ROOT=`which sudo`
## [-b bcc-addr] [-c cc-addr] [-s subject]            to-addr
function ipt_email() { set -x ; 
 subject="ipt_  ${@} bad stuff"; mail -c logs+iptables@ns1.net -s "$subject" px@ns1.net ;
 set +x ; }
function ipt_log() { 

set -x
# fix log-prefix to work within string limits
logmsg="${@}"
$NOT_ROOT iptables -A INPUT -s ${1} -m limit --limit 5/hour -j LOG --log-prefix "$logmsg" ; }
set +x
#
function ipt_drop() {
set -x 
 $NOT_ROOT  iptables -A INPUT -s ${1} -j DROP ;
set +x
 }

#[9209:519904] -A INPUT -s 220.181.0.0/16 -m limit --limit 5/hour -j LOG --log-prefix "baiduhttp abuse 220.181.0.0/1"
#[15402:858484] -A INPUT -s 220.181.0.0/16 -j DROP

function ipt_whois() { set -x ; bwwhois  ${1} ; set +x ; } 

function  QuickBlock() { ipt_whois ${1}| ipt_email ${@} && ipt_save && ipt_log $@ && ipt_drop $@ && ipt_save ; }
