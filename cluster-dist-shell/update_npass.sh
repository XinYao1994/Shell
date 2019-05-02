rm -rf .ssh
ssh-keygen
cat .ssh/id_rsa.pub >>  .ssh/authorized_keys
chmod -R 700 .ssh
chmod 600 .ssh/authorized_keys
