#for ((i=2;i<10;i++));do
#        ssh se00$i "cd /localfs/xyao ; git clone --recursive se001:/localfs/xyao/incubator-mxnet" &
#done;
for ((i=34;i<49;i++));do
        ssh se0$i "cd /localfs/xyao ; git clone --recursive se033:/localfs/xyao/caffe_pslite" &
done;

exit;

