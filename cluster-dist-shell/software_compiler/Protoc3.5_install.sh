cd /localfs/xyao/software
wget https://github.com/protocolbuffers/protobuf/archive/v3.5.0.tar.gz
tar zxvf v3.5.0.tar.gz
cd protobuf-3.5.0
./autogen.sh
./configure
make -j 8
sudo make install
