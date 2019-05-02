echo "" > tmp_log
for ((i=1;i<10;i++));do
	echo "$i" 
	echo "$i" >> tmp_log
	ssh -Nf -L 202.45.128.243:1000$i:se00$i:8042 se00$i 2>> tmp_log
done;
for ((i=10;i<65;i++));do
	echo "$i" 
	echo "$i" >> tmp_log
	ssh -Nf -L 202.45.128.243:100$i:se0$i:8042 se0$i 2>> tmp_log
done;

exit;
