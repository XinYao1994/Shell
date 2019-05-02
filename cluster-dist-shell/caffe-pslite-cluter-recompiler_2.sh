#for ((i=1;i<10;i++));do
#        ssh se00$i "cd /localfs/xyao/caffe_pslite/build ; cmake -DBLAS=Open .. ; make all -j 8" &
#done;
for ((i=34;i<49;i++));do
        ssh se0$i "cd /localfs/xyao/caffe_pslite ; git pull" 
done;

wait;

for ((i=34;i<49;i++));do
        ssh se0$i "cd /localfs/xyao/caffe_pslite/3rdparty/ps-lite ; git pull origin master" 
done;

wait;

for ((i=33;i<49;i++));do
        ssh se0$i "cd /localfs/xyao/caffe_pslite/3rdparty/ps-lite ; make -j 8" &
done;

wait;

for ((i=33;i<49;i++));do
        ssh se0$i "cd /localfs/xyao/caffe_pslite/build ; cmake -DBLAS=Open .. ; make all -j 8" &
        ssh se0$i "cd /localfs/xyao/caffe_pslite/examples/ps ; make" &
done;

wait;

exit;

