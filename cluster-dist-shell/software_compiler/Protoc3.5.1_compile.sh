cd /localfs/xyao/software
wget https://github.com/protocolbuffers/protobuf/archive/v3.5.1.tar.gz
tar zxvf v3.5.1.tar.gz
cd protobuf-3.5.1
./autogen.sh 
./configure CXX=g++ CXXFLAGS='-std=c++11 -O3 -g'
make -j 8
