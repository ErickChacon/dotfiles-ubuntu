#!/bin/sh


# colorout for R
git clone --depth 1 https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
rm -rf colorout

