for ((i=1;i<10;i++));do
	ssh se00${i} "pip --version"
done;
for ((i=10;i<65;i++));do
	ssh se0${i} "pip --version"
done;

exit;
