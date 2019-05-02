echo "" > tmp_log
for ((i=51;i<65;i++));do
	echo "$i" 
	echo "$i" >> tmp_log
	ssh se0${i} $1 2>> tmp_log &
done;

wait;
exit;
