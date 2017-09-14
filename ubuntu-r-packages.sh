#!/bin/sh

# devtools
echo "install.packages(\"devtools\")" > install-packages.R
sudo apt-get install libcurl4-openssl-dev libssl-dev -y
R CMD BATCH install-packages.R
rm install-packages.R

# colorout for R
git clone --depth 1 https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
rm -rf colorout

