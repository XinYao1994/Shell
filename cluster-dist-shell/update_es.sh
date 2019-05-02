rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch
scp xyao@se008:~/elasticsearch.repo /etc/yum.repos.d/
chkconfig --add elasticsearch
sudo -i service elasticsearch stop
yum install -y elasticsearch
sudo -i service elasticsearch start
