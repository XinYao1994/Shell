sudo apt install -y nis autofs
sudo cp /home/cs/xyao/4shell/reinstall/yp.conf /etc/yp.conf
sudo cp /home/cs/xyao/4shell/reinstall/nsswitch.conf /etc/nsswitch.conf
sudo cp /home/cs/xyao/4shell/reinstall/sshd_config /etc/ssh/sshd_config
sudo cp /home/cs/xyao/4shell/reinstall/auto* /etc/
sudo ln -fs /lib/systemd/system/rc-local.service /etc/systemd/system/rc-local.service
sudo echo "" >> /etc/systemd/system/rc-local.service
sudo echo "[Install]" >> /etc/systemd/system/rc-local.service
sudo echo "WantedBy=multi-user.target" >> /etc/systemd/system/rc-local.service
sudo echo "Alias=rc-local.service" >> /etc/systemd/system/rc-local.service
sudo cp /home/cs/xyao/4shell/reinstall/rc.local /etc/rc.local
