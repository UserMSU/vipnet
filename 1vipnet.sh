#!/usr/bin/expect -f
LOG='root'
VIP='192.168.16.10'
set timeout 1
spawn ./ip_vipnet.sh
sleep 10 # таймайт можно ставить меньше, в зависимости от производительности VIPNET'а. Например, к HW50 долго подключаться по SSH.
expect "$LOG@$VIP's password:\r"
send -- "machine halt"
expect eof
