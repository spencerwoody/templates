#!/bin/bash

apt install git vim emacs25 r-base r-base-dev texlive-full dirmngr nfs-kernel-server evince nfs-common mpich libxml2-dev libcurl4-openssl-dev libssl-dev ufw openssh-client openssh-server

echo "deb http://cran.revolutionanalytics.com/bin/linux/debian stretch-cran35/" | sudo tee -a /etc/apt/sources.list

apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

apt update
apt upgrade

