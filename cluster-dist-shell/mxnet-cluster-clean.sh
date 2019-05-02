for ((i=1;i<10;i++));do
        ssh se00$i "cd /localfs/xyao/incubator-mxnet ; make clean" &
done;
for ((i=10;i<65;i++));do
        ssh se0$i "cd /localfs/xyao/incubator-mxnet ; make clean" &
done;

exit;

