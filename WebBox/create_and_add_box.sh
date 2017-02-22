#! /bin/bash

echo "INIT - This script should be run from Vagrant project directory."

echo "STEP - Bring up the base box and install required software"
vagrant up

echo "STEP - Generate a default box file called package.box"
vagrant package web

echo "STEP - Add package.box to Vagrant standard box location with some name like UbuntuTrusty64Web"
vagrant box add UbuntuTrusty64Web

echo "STEP - Now we can destroy the box. This will not remove box from Vagrant standard location of boxes"
vagrant destroy -f

echo "STEP - We can remove package.box as it is no longer required."
rm -f package.box

echo "END - End of execution"

