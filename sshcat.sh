#!/usr/bin/expect
set no [lindex $argv 0]
spawn ssh student@student${no} "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChYmZfEZEYOnR+tLqKPmxkswlapzW0+kwmyUyMbpa+l6acX3EQoBr/7Gl72NwovrLS9+pNhHYCK/b+o0sWVA5Aq2RKazxN5uu6m3MrbkNFPv6kdS9ERNFjaLrdXcpTlOjK5wYtG+OD5zdCl6hJxM/U5IO8RbpOM/LI7wZOeKgcae+yUPzF8Lnmtr+MDVaTQSispIjrRiS/4GPyVj4N48flLhyVo9m9jFtIytCksbRFWTiME3LsqlmQQwenqUcraVnxQKYWhQQe6SF5rGHxkLzddw4LGP6nRc3hrxV5VnYM/vXdFItBKm8Dy94kSDXqEjFJWJx0AECKn7EfYhW35G25 coc-server@cocserver' > .ssh/authorized_keys"
expect "*password:*"
send "student\n"
