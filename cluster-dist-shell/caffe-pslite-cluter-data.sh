#for ((i=1;i<10;i++));do
#        ssh se00$i "cd /localfs/xyao/caffe_pslite/build ; cmake -DBLAS=Open .. ; make all -j 8" &
#done;
#ssh $1 "cd /localfs/xyao/caffe_pslite; ./data/mnist/get_mnist.sh; ./examples/mnist/create_mnist.sh" &
for ((i=49;i<65;i++));do
#        ssh se0$i "cd /localfs/xyao/caffe_pslite; ./data/mnist/get_mnist.sh; ./examples/mnist/create_mnist.sh" &
        ssh se0$i "cd /localfs/xyao/caffe_pslite; ./data/cifar10/get_cifar10.sh ; ./examples/cifar10/create_cifar10.sh" &
done;

wait;

exit;

