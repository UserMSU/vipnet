#!/usr/bin/expect -f
LOG='root'
VIP='192.168.16.10'
set timeout 1
spawn ./ip_vipnet.sh
sleep 5
expect "$LOG@$VIP's password:\r"
send -- "machine halt"
sleep 60
spawn ./ip_vipnet.sh
sleep 5
expect "$LOG@$VIP's password:\r"
send -- "machine halt"
expect eof
