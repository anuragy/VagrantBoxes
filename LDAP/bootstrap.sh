#!/usr/bin/env bash

echo --------- Start - bootstrap_admin.sh ---

echo --------- Installing Telnet -----------
sudo apt-get -y install telnetd
echo ------------------ Done ----------------

echo -------- Install Berkely DB -----------
sudo apt-get -y install libdb-dev
echo ------------------ Done ---------------

sudo apt-get clean

echo ----------------- Clean Done----------------

echo ---------- Copying files ---------------
cp /vagrant/*.ldif /home/vagrant
cp /vagrant/openldap-2.4.44.tgz /home/vagrant
cp /vagrant/slapd.conf /home/vagrant
echo ------------ Copy Done ---------------

echo ------------ Unpack openldap ----------
cd /home/vagrant
gzip -dv openldap-2.4.44.tgz
tar -xvf openldap-2.4.44.tar
echo ---------- Unpack Done ----------------

echo ---------- Make openldap -------------
cd openldap-2.4.44
./configure
make depend
make
sudo make install
echo ---------- Make done -----------------

cd /home/vagrant

echo ---------- Configure slapd -----------
sudo cp /home/vagrant/slapd.conf /usr/local/etc/openldap/

echo ---------- Start slapd ---------------
sudo /usr/local/libexec/slapd
echo ---------- Done ----------------------

echo ----------- Test slapd ---------------
/usr/local/bin/ldapsearch -x -b '' -s base '(objectclass=*)' namingContexts


echo ----------- Add initial entries ------
/usr/local/bin/ldapadd -x -D "cn=Manager,dc=newtechways,dc=com" -f initial_entries.ldif -w secret

/usr/local/bin/ldapsearch -x -b 'dc=newtechways,dc=com' '(objectclass=*)'
echo ---------- Done initial entries ------

echo ----------- Add user entries ---------
/usr/local/bin/ldapadd -x -D "cn=Manager,dc=newtechways,dc=com" -f user_entries.ldif -w secret

/usr/local/bin/ldapsearch -x -b 'dc=newtechways,dc=com' '(objectclass=*)'
echo ---------- Done user entries --------

echo --------- Done - bootstrap_admin.sh ----


