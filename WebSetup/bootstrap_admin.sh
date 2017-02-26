#!/usr/bin/env bash

echo --------- Start - bootstrap_admin.sh ---

echo --------- Copying scripts --------------
# copy shell scripts and ansible playbooks into /home/vagrant (from inside the admin node)
cp -rp /vagrant/ansible.d /home/vagrant/ansible.d

chown -R vagrant:vagrant /home/vagrant

echo ------------------ Done ----------------

echo --------- Configuring hosts ------------
# configure hosts file for our internal network defined by Vagrantfile
sudo echo "
# vagrant environment nodes
192.168.56.101  admin
192.168.56.102  lb
192.168.56.201  web1
192.168.56.202  web2
192.168.56.203  web3
192.168.56.204  web4
192.168.56.205  web5
192.168.56.206  web6
192.168.56.207  web7
192.168.56.208  web8
192.168.56.209  web9
" >> /etc/hosts

ssh-keyscan localhost >> ~/.ssh/known_hosts

echo ------------------ Done ----------------


echo --------- Done - bootstrap_admin.sh ----

