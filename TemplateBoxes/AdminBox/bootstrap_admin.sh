#!/usr/bin/env bash

echo --------- Start - bootstrap_admin.sh ---

echo --------- Copying ssh keys ------------
cp -p /vagrant/id_rsa* /home/vagrant/.ssh/
echo ------------------ Done ----------------

echo --------- Installing Telnet -----------
sudo apt-get -y install telnetd
echo ------------------ Done ----------------

echo --------- Installing Ansible -----------
# install ansible (http://docs.ansible.com/intro_installation.html)
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
echo ------------------ Done ----------------

echo --------- Installing Jenkins -----------
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get -y install jenkins
echo ------------------ Done ----------------

sudo apt-get clean

echo --------- Done - bootstrap_admin.sh ----

