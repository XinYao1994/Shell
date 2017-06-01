#!/usr/bin/expect
set usr [lindex $argv 0]
set ip [lindex $argv 1]
set pass [lindex $argv 2]
spawn ssh ${usr}@${ip}
#expect "*(yes/no)?*"
#send "yes\n"
expect "*password:*"
send "${pass}\n"
expect "~]$"
send "sudo cp ~/tool/sudoers /etc/\n"
expect "*password:*"
send "${pass}\n"
expect "~]$"
send "exit\n"
interact
