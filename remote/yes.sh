#!/usr/bin/expect
set no [lindex $argv 0]
spawn ssh student@student${no} 
expect "*password:*"
send "student\n"
expect "~$*"
send "ssh coc-server@10.42.0.1 \n"  
expect "*(yes/no)?*"
send "yes\n"
expect "*password:*"
send "coc-server\n"
expect "~$*"
send "exit\n"
expect "~$*"
send "exit\n"
interact
