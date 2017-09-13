#!/bin/sh

# Update and upgrade
sudo apt-get update
sudo apt-get upgrade
sudo apt autoremove

# Git
sudo apt-get install git -y

# Neovim requirements
sudo apt-get install software-properties-common -y
sudo apt-get install python-pip python3-pip -y
pip2 install neovim
pip3 install neovim
sudo apt-get install ruby ruby-dev -y
sudo gem install neovim

# Neovim
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt-get install neovim -y

# Neovim plugin manager
sudo apt-get install curl -y
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# unison
sudo apt-get install unison -y

# bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh -n

# powerline font
git clone --depth 1 https://github.com/powerline/fonts.git
fonts/install.sh
rm -rf fonts

# Devicon font
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
nerd-fonts/install.sh DroidSansMono
rm -rf nerd-fonts

# terminal colors
git clone --depth 1 https://github.com/ErickChacon/Gogh.git
Gogh/themes/gruvox.dark.soft.sh
rm -rf Gogh

# tmux dependencies
sudo apt-get install libevent-dev libncurses-dev build-essential -y

# tmux
curl -sL https://github.com/tmux/tmux/releases/download/2.5/tmux-2.5.tar.gz | tar xz
cd tmux-2.5
./configure && make
sudo make install
cd ..
rm -rf tmux-2.5

# italic and true color in tmux
git clone --depth 1 https://github.com/ErickChacon/dotfiles-ubuntu.git
tic dotfiles-ubuntu/xterm-256color-italic.terminfo
rm -rf dotfiles-ubuntu

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys \
  BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | \
  sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client -y


# R
echo "deb https://cloud.r-project.org/bin/linux/ubuntu xenial/" | \
  sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base r-base-dev -y

# R initial settings
echo deb http://repository.spotify.com stable non-free | \
  sudo tee /etc/apt/sources.list.d/spotify.list
echo "
local({
r <- getOption(\"repos\")
r[\"CRAN\"] <- \"http://cloud.r-project.org/\"
options(repos = r)
})
" | sudo tee /etc/R/Rprofile.site

# devtools
echo "install.packages(\"devtools\")" > install-packages.R
sudo apt-get install libcurl4-openssl-dev libssl-dev -y
R CMD BATCH install-packages.R
rm install-packages.R

# colorout for R
git clone --depth 1 https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
rm -rf colorout

# dotfiles
git clone --depth 1 git@github.com:ErickChacon/dotfiles-ubuntu.git
dotfiles-ubuntu/pull.sh
rm -rf dotfiles-ubuntu

# latex
sudo apt-get install texlive-full -y

# tweak-tool
sudo apt-get install gnome-tweak-tool -y

# silversearcher-ag
sudo apt-get install silversearcher-ag -y

# virtual box
sudo apt-get install virtualbox -y

# video snapshot requirements for animation
sudo apt-get install blender -y

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all


