#!/bin/sh

# tidyverse
sudo apt-get install libxml2-dev -y
echo "install.packages(\"tidyverse\")" > r-packages.R
R CMD BATCH r-packages.R

# models
echo "install.packages(\"mgcv\")" > r-packages.R
echo "install.packages(\"gamlss\")" >> r-packages.R
echo "install.packages(\"bamlss\")" >> r-packages.R
echo "install.packages(\"bamlss\", \
  repos=\"http://R-Forge.R-project.org\")" >> r-packages.R
echo "install.packages(\"R2BayesX\")" >> r-packages.R
R CMD BATCH r-packages.R
# echo "install.packages(\"bamlss\", repos = \"http://R-Forge.R-project.org\")" >> \
  # r-packages.R
# Warning: dependencies ‘coda’, ‘MBA’, ‘sp’, ‘spam’ are not available

# tables
echo "install.packages(\"gridExtra\")" > r-packages.R
R CMD BATCH r-packages.R

# github packages
git clone https://github.com/ErickChacon/day2day.git
R CMD INSTALL day2day
rm -rf day2day

