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

echo --------- Installing Ansible -----------
# install ansible (http://docs.ansible.com/intro_installation.html)
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
echo ------------------ Done ----------------

# echo --------- Installing Java 1.7 ----------
# sudo add-apt-repository -y ppa:webupd8team/java
# sudo apt-get update
# echo debconf shared/accepted-oracle-license-v1-1 select true | \
# sudo debconf-set-selections
# echo debconf shared/accepted-oracle-license-v1-1 seen true | \
# sudo debconf-set-selections
# sudo apt-get -y install oracle-java7-installer
# echo ------------------ Done ----------------

# echo --------- Installing Tomcat 7 ----------
# sudo apt-get -y install tomcat7
# echo ------------------ Done ----------------

# echo --------- Installing Apache 2 ----------
# sudo apt-get -y install apache2
# echo ------------------ Done ----------------


echo --------- Done - bootstrap_admin.sh ----

