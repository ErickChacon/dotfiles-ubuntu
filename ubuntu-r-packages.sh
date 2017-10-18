#!/bin/sh

# tidyverse
sudo apt-get install libxml2-dev -y
echo "install.packages(\"tidyverse\")" > r-packages.R
echo "devtools::install_github(\"tidyverse/ggplot2\")" >> r-packages.R
echo "install.packages(\"purrrlyr\")" >> r-packages.R
R CMD BATCH r-packages.R

# models
echo "install.packages(\"mgcv\")" > r-packages.R
echo "install.packages(\"gamlss\")" >> r-packages.R
echo "install.packages(\"R2BayesX\")" >> r-packages.R
R CMD BATCH r-packages.R

# bamlss
echo "install.packages(\"coda\")" > r-packages.R
echo "install.packages(\"MBA\")" >> r-packages.R
echo "install.packages(\"sp\")" >> r-packages.R
echo "install.packages(\"spam\")" >> r-packages.R
echo "install.packages(\"bamlss\", \
  repos=\"http://R-Forge.R-project.org\")" >> r-packages.R
R CMD BATCH r-packages.R

# tables
echo "install.packages(\"gridExtra\")" > r-packages.R
R CMD BATCH r-packages.R

# github packages
git clone https://github.com/ErickChacon/day2day.git
R CMD INSTALL day2day
rm -rf day2day

# sf package
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable -y
sudo apt-get update
sudo apt-get install libgdal-dev libgeos-dev libproj-dev libudunits2-dev \
  liblwgeom-dev -y
echo "install.packages(\"sf\")" > r-packages.R

# spatial packages
R CMD BATCH r-packages.R
echo "install.packages(\"spatstat\")" > r-packages.R
echo "install.packages(\"fields\")" >> r-packages.R
echo "install.packages(\"maptools\")" >> r-packages.R
R CMD BATCH r-packages.R

# visualization
echo "install.packages(\"viridis\")" > r-packages.R
R CMD BATCH r-packages.R

# code efficiency
echo "install.packages(\"microbenchmark\")" > r-packages.R
echo "install.packages(\"rbenchmark\")" >> r-packages.R
R CMD BATCH r-packages.R

# database connection
echo "install.packages(\"rredis\")" > r-packages.R
R CMD BATCH r-packages.R
echo
