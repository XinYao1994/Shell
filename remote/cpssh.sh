#cat "" > hw;

for ((i=1;i<87;i++));do
	host=student$i;
	##ssh $host "mkdir .ssh";
	##scp .ssh/id_rsa.pub $host:.ssh/server.pub;
	##scp .ssh/id_rsa.pub $host:.ssh/authorized_keys;
	scp -r sshcp student@$host:.ssh;
	##ssh $host "cat .ssh/server.pub >> .ssh/authorized_keys"; 
done;

exit;
