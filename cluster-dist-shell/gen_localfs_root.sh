sudo mkdir /localfs
sudo mount /dev/mapper/vg_$1-lv_root /localfs
cd /localfs
sudo mkdir xyao
sudo chown xyao xyao
#cd xyao
#scp -r se043:/localfs/xyao/*.sh ./
