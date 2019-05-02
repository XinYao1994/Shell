sudo apt-get install -y dkms infiniband-diags libibverbs* libibverbs-dev ibacm librdmacm* mstflint  libibmad.* libibumad* opensm srptools librdmacm-dev rdmacm-utils ibverbs-utils perftest ibutils libnl-utils
sudo apt-get install -y libtool autoconf automake build-essential numactl libnuma-dev pkg-config
sudo cp /home/cs/xyao/4shell/reinstall/40-rdma.rules /etc/udev/rules.d/40-rdma.rules
sudo cp /home/cs/xyao/4shell/reinstall/limits.conf /etc/security/limits.conf
sudo su
modprobe -v qedr
modprobe qed
modprobe qede
modprobe qedr
modprobe rdma_cm
modprobe ib_uverbs
modprobe rdma_ucm
modprobe ib_umad
modprobe ib_ipoib
modprobe ib_iser

