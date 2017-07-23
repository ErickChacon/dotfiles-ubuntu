#!/bin/bash
if [[ $HOSTNAME == "chaconmo-ThinkPad-L470-W10DG" ]]; then
  echo "Working at Lancaster University!"
elif [[ $HOSTNAME == "chaconmo-Precision-5510" ]]; then
  echo "Working at home!"
fi

# cd ~/Documents/Repositories/dotfiles-ubuntu/
pwd
cp -r ~/.config/nvim .
cp /etc/apt/sources.list .
cp /etc/R/Rprofile.site .
cp ~/.Rprofile .
cp ~/.bashrc .
cp -r ~/Documents/Nvim/UltiSnips .
# cp ~/.config/redshift.conf .
cp ~/.unison/default.prf .
cp ~/.tmux.conf .
cp -r ~/.tmux .
cp ~/.ctags .
cp ~/.bash_it/aliases/custom.aliases.bash .
