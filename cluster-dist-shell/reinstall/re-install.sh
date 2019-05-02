sudo apt update
sudo apt install -y vim net-tools ifupdown
sudo echo "auto lo" >> /etc/network/interfaces
sudo echo "iface lo inet loopback" >> /etc/network/interfaces
sudo echo "" >> /etc/network/interfaces
sudo echo "auto eno1" >> /etc/network/interfaces
sudo echo "iface eno1 inet static" >> /etc/network/interfaces
sudo echo "        address 10.0.2."${1} >> /etc/network/interfaces
sudo echo "        netmask 255.255.255.0" >> /etc/network/interfaces
sudo echo "        network 10.0.2.0" >> /etc/network/interfaces
sudo echo "        boardcast 10.0.2.255" >> /etc/network/interfaces
sudo echo "        gateway 10.0.2.241" >> /etc/network/interfaces
sudo echo "        dns-nameservers 147.8.176.15 147.8.178.15 147.8.175.12 147.8.178.10" >> /etc/network/interfaces
sudo echo "        dns-search cs.hku.hk" >> /etc/network/interfaces
sudo echo "" >> /etc/network/interfaces
sudo echo "auto enp3s0f0" >> /etc/network/interfaces
sudo echo "iface enp3s0f0 inet static" >> /etc/network/interfaces
sudo echo "    address  10.1.2."${1} >> /etc/network/interfaces
sudo echo "    netmask  255.255.255.0" >> /etc/network/interfaces
sudo echo "    network  10.1.2.0" >> /etc/network/interfaces
sudo ifup enp3s0f0
