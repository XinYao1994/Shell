sudo echo "" >> /etc/network/interfaces
sudo echo "auto ib0" >> /etc/network/interfaces
sudo echo "iface ib0 inet static" >> /etc/network/interfaces
sudo echo "        address 10.4.2."${1} >> /etc/network/interfaces
sudo echo "        netmask 255.255.255.0" >> /etc/network/interfaces
sudo echo "        network 10.4.2.0" >> /etc/network/interfaces
sudo echo "        boardcast 10.4.2.255" >> /etc/network/interfaces
sudo echo "        dns-nameservers 147.8.176.15 147.8.178.15 147.8.175.12 147.8.178.10" >> /etc/network/interfaces
sudo echo "        dns-search cs.hku.hk" >> /etc/network/interfaces

sudo ifup ib0
