#!/bin/bash

apt install git vim emacs25 r-base r-base-dev

echo "deb https://cran.revolutionanalytics.com/bin/linux/debian stretch-cran35/" | sudo tee -a /etc/apt/sources.list

apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian stretch-cran35/'

