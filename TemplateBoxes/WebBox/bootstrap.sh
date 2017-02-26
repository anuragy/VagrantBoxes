#!/usr/bin/env bash

echo --------- Start - bootstrap_admin.sh ---

echo --------- Installing Ansible -----------
# install ansible (http://docs.ansible.com/intro_installation.html)
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible
echo ------------------ Done ----------------

echo --------- Installing Java 1.7 ----------
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | \
sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
sudo debconf-set-selections
sudo apt-get -y install oracle-java7-installer
echo ------------------ Done ----------------

echo --------- Installing Tomcat 7 ----------
sudo apt-get -y install tomcat7
echo ------------------ Done ----------------

echo --------- Installing Apache 2 ----------
sudo apt-get -y install apache2
echo ------------------ Done ----------------


echo --------- Done - bootstrap_admin.sh ----

