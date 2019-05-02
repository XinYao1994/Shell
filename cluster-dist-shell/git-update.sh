wget https://www.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz --no-check-certificate
tar zxvf git-2.9.5.tar.gz
cd git-2.9.5
./configure
make -j8
sudo make install
