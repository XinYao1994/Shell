echo "" > tmp_log
for ((i=1;i<10;i++));do
	echo "se00$i" 
	echo "se00$i" >> tmp_log
	ssh se00${i} $1 2>> tmp_log
done;
for ((i=10;i<65;i++));do
	echo "se0$i" 
	echo "se0$i" >> tmp_log
	ssh se0${i} $1 2>> tmp_log
done;

exit;
