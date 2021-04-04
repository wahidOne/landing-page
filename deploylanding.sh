#!/bin/bash


echo "============================="
echo " INSTALL WEB SOSMED"
echo "============================="



echo "=============================>"
echo "Downloading Data"
echo "=============================>"
cd
rm -f master.zip
rm -R sosial-media-master
wget https://github.com/wahidOne/landing-page/archive/master.zip
echo "=============================>"
echo "Ekstrak File"
echo "=============================>"
sudo apt-get install unzip
sudo unzip master.zip
echo "=============================>"
echo "Memindahkan data"
echo "=============================>"
sudo rm -R /var/www/html/*
sudo rm -f /var/www/html/*
sudo mv landing-page-master/* /var/www/html
echo "=============================>"
echo "Setup selesai"
echo "=============================>"
echo "=============================>"
echo "DONE"
echo "=============================>"
