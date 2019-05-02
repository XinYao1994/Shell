for ((i=1;i<10;i++));do
        ssh se00$i "cd /localfs/xyao/incubator-mxnet ; make -j 16 USE_OPENCV=1 USE_BLAS=openblas USE_DIST_KVSTORE=1" &
done;
for ((i=10;i<65;i++));do
        ssh se0$i "cd /localfs/xyao/incubator-mxnet ; make -j 16 USE_OPENCV=1 USE_BLAS=openblas USE_DIST_KVSTORE=1" &
done;

exit;

