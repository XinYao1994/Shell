#!/usr/bin/expect
set no [lindex $argv 0]
spawn ssh student@student${no}
expect "*(yes/no)?*"
send "yes\n"
expect "*hosts.*"
expect "*password:"
send "student\n"
expect eof
interact
