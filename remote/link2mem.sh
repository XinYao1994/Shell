#!/usr/bin/expect
set no [lindex $argv 0]
spawn ssh student@student${no} 
expect "*password:*"
send "student\n"
expect "~$*"
send "sudo -S su - -c 'lshw -short -C memory' > hw \n"  
expect "*student:*"
send "student\n"
expect "~$*"
send "scp hw coc-server@10.42.0.1:~/hw${no} \n"  
#expect "*(yes/no)?*"
#send "yes\n"
expect "*password:*"
send "coc-server\n"
expect "~$*"
send "exit\n"
interact
