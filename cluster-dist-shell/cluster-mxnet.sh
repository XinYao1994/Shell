sudo apt-get install -y build-essential git
sudo apt-get install -y libopenblas-dev liblapack-dev
sudo apt-get install -y libopencv-dev
sudo chown xyao /localfs/xyao
cd /localfs/xyao
git clone --recursive 147.8.177.204:/home/xyao/workspace-java/hpc/incubator-mxnet
cd incubator-mxnet
make -j $(nproc) USE_OPENCV=1 USE_BLAS=openblas
sudo apt-get install -y python-dev python-setuptools python-pip libgfortran3
cd python
sudo pip install --upgrade pip
sudo cp /home/cs/xyao/4shell/pip_tt /usr/bin/pip
sudo pip install -e .
sudo apt-get install -y graphviz
sudo pip install graphviz
