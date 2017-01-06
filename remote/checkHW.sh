#cat "" > hw;

for ((i=1;i<61;i++));do
	host=student$i;
	##ssh $host "mkdir .ssh";
	##scp .ssh/id_rsa.pub $host:.ssh/server.pub;
	##scp .ssh/id_rsa.pub $host:.ssh/authorized_keys;
	scp -r sshcp student@$host:.ssh;
	##ssh $host "cat .ssh/server.pub >> .ssh/authorized_keys"; 
done;

exit;

#echo "authorize finish";

for ((i=16;i<22;i++));do
	#echo $i;
	j=$(($i*3+18));
	#echo $j;
	host=student$i;
	echo $host;

	echo -n "-----------------------------------------------" >> hw;
	echo -n $host >> hw;
	echo "-----------------------------------------------" >> hw;

	#ssh $host "cat /proc/cpuinfo | grep 'model name'" >> hw;
	#ssh student1 "cat /proc/meminfo | grep MemTotal" >> hw;
	if [[ $i = 6 ]]; then
		echo zzr1989 | ssh $host "sudo -S su - -c 'lshw -short -C cpu'" >> hw;
        	echo zzr1989 | ssh $host "sudo -S su - -c 'lshw -short -C memory'" >> hw;
 	elif [[ $i = 7 ]]; then
                echo zzr1989 | ssh $host "sudo -S su - -c 'lshw -short -C cpu'" >> hw;
                echo zzr1989 | ssh $host "sudo -S su - -c 'lshw -short -C memory'" >> hw;
        elif [[ $i = 8 ]]; then
                echo zzr1989 | ssh $host "sudo -S su - -c 'lshw -short -C cpu'" >> hw;
                echo zzr1989 | ssh $host "sudo -S su - -c 'lshw -short -C memory'" >> hw;
        else
		echo student | ssh $host "sudo -S su - -c 'lshw -short -C cpu'" >> hw;
		echo student | ssh $host "sudo -S su - -c 'lshw -short -C memory'" >> hw;
	fi;
done;
