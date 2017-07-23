#!/bin/bash
if [[ $HOSTNAME == "chaconmo-ThinkPad-L470-W10DG" ]]; then
  echo "Working at Lancaster University!"
elif [[ $HOSTNAME == "chaconmo-Precision-5510" ]]; then
  echo "Working at home!"
fi

# cd ~/Documents/Repositories/dotfiles-ubuntu/

cp -r nvim ~/.config/
# cp sources.list /etc/apt/sources.list
# cp  Rprofile.site /etc/R/Rprofile.site
cp .Rprofile ~/.Rprofile
cp .bashrc ~/.bashrc
cp -r UltiSnips ~/Documents/Nvim/
# cp redshift ~/.config/redshift.conf
cp default.prf ~/.unison/default.prf
cp .tmux.conf ~/.tmux.conf
cp -r .tmux ~/
cp .ctags ~/.ctags
cp custom.aliases.bash ~/.bash_it/aliases/custom.aliases.bash
