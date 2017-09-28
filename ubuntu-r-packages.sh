#!/bin/sh

# tidyverse
sudo apt-get install libxml2-dev -y
echo "install.packages(\"tidyverse\")" > r-packages.R
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

# spatial packages
echo "install.packages(\"spatstat\")" > r-packages.R
echo "install.packages(\"fields\")" >> r-packages.R
R CMD BATCH r-packages.R

# visualization
echo "install.packages(\"viridis\")" > r-packages.R
R CMD BATCH r-packages.R
