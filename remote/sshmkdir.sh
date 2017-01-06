#!/usr/bin/expect
set no [lindex $argv 0]
spawn ssh student@student${no} "mkdir .ssh"
expect "*password:*"
send "student\n"
