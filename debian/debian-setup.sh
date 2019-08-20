
#!/bin/bash

# Install latest version of R
sudo apt install dirmngr apt-transport-https ca-certificates software-properties-common gnupg2

sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian stretch-cran35/'

sudo apt update
sudo apt upgrade -y


# Install essentials
sudo apt install emacs git r-base texlive-full libcurl4-openssl-dev  libxml2-dev libssl-dev libudunits2-dev libgdal-dev libprotobuf-dev protobuf-compiler libv8-dev libnode-dev libjq-dev ufw

# R CMD install.packages(c("tidyverse", "Rcpp", "RcppArmadillo", "RcppEigen", "RcppParallel", "RcppProgress", "sf", "glmnet"))
