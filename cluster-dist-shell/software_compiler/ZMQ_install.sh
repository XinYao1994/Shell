cd /localfs/xyao/software
git clone https://github.com/zeromq/libZMQ.git
cd libZMQ
./autogen.sh
./configure
make -j 8
sudo make install
