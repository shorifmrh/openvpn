#!/bin/bash

clear

yum update -y
yum install wget -y
yum install net-tools -y
wget https://zerohost.co/f/openvpn-as-2.5-CentOS7.x86_64.rpm
rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://zerohost.co/f/pyovpn-2.0-py2.7.egg
cd /usr/local/openvpn_as/bin
./ovpn-init


echo "=========================DONE=============================="
echo "SETUP ADMIN PASSWORD"

passwd openvpn


echo "=========================DONE=============================="
