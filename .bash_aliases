# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias l1='ls -1'

alias mysqlstart='mysql.server start'
alias mysqlstop='mysql.server stop'
alias b="cproxy bundle"
alias bi="b install"
alias be="b exec"
alias brails="b rails"
alias brake="b rake"
#Tinyproxy
alias start_tinyproxy='/usr/local/sbin/tinyproxy -c /usr/local/etc/tinyproxy.conf'
alias kill_tinyproxy='kill $(cat /tmp/tinyproxy.pid)'
alias npm-exec='PATH=$(npm bin):$PATH'
alias giturl='git config --get remote.upstream.url'
alias fm_kycdev='sshfs -o reconnect -o volname=kycdev -o IdentityFile=/Users/tqin5/.ssh/id_rsa.openssh tqin@devsftp.bdns.bloomberg.com:/home17/tqin /Volumes/kycdev -o port=2222'
alias ev_proxy='http_proxy=http://bproxy.tdmz1.bloomberg.com:80 https_proxy=http://bproxy.tdmz1.bloomberg.com:80'
alias ext_proxy='http_proxy=http://proxy.bloomberg.com:81 https_proxy=http://proxy.bloomberg.com:81'
