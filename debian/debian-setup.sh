
#!/bin/bash

# Install latest version of R
sudo apt install dirmngr apt-transport-https ca-certificates software-properties-common gnupg2

sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian stretch-cran35/'

sudo apt update
sudo apt upgrade -y

# For MATE terminal
##env TERM=xterm-256color /bin/bash

###############################################################################
#                                  Essentials                                 #
###############################################################################

# Install essentials

sudo apt install emacs git r-base texlive-full libcurl4-openssl-dev  libxml2-dev libssl-dev libudunits2-dev libgdal-dev libprotobuf-dev protobuf-compiler libv8-dev libnode-dev libjq-dev ufw system-config-printer darktable

###############################################################################
#                                  R packages                                 #
###############################################################################

# R CMD install.packages(c("tidyverse", "Rcpp", "RcppArmadillo", "RcppEigen", "RcppParallel", "RcppProgress", "sf", "glmnet"))

###############################################################################
#                               Opitonal details                              #
###############################################################################

## shorter grub time

## /etc/default/grub

## lightdm

## /usr/share/lightdm/lightdm.conf.d/01_my.conf

# [SeatDefaults]
# greeter-hide-users=false

###############################################################################
#                                 R on Ubuntu                                 #
###############################################################################

sudo apt install apt-transport-https software-properties-common

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

sudo apt update
 
sudo apt install r-base

###############################################################################
#                             24-hour lock screen                             #
###############################################################################

/etc/default/locale

LC_TIME=“en_GB.UTF-8”
