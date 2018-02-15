#!/bin/sh

# UPDATE AND UPGRADE {{{1
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove

# SOFTWARE FOR INSTALLATION {{{1
sudo apt-get install git -y
sudo apt-get install curl -y

# NEOVIM {{{1

# requirements
sudo apt-get install software-properties-common -y
sudo apt-get install python-pip python3-pip -y
pip2 install neovim
pip3 install neovim
sudo apt-get install ruby ruby-dev -y
sudo gem install neovim

# install
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update
sudo apt-get install neovim -y
sudo apt-get install exuberant-ctags -y

# plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# TMUX {{{1

# dependencies
sudo apt-get install libevent-dev libncurses-dev build-essential -y

# install
curl -sL https://github.com/tmux/tmux/releases/download/2.5/tmux-2.5.tar.gz | tar xz
cd tmux-2.5
./configure && make
sudo make install
cd ..
rm -rf tmux-2.5

# italic and true color
git clone --depth 1 https://github.com/ErickChacon/dotfiles-ubuntu.git
tic dotfiles-ubuntu/xterm-256color-italic.terminfo
rm -rf dotfiles-ubuntu

# TERMINAL SETTINGS {{{1

# bash-it
git clone --depth 1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh -n

# powerline font
git clone --depth 1 https://github.com/powerline/fonts.git
fonts/install.sh
rm -rf fonts

# Devicon font
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts && ./install.sh DroidSansMono && cd ..
rm -rf nerd-fonts

# terminal colors
git clone --depth 1 https://github.com/ErickChacon/Gogh.git
Gogh/themes/gruvbox.dark.soft.sh
rm -rf Gogh

# R {{{1

# pandoc
sudo apt-get install pandoc -y
sudo apt-get install pandoc-citeproc -y

# install
echo "
## Mirror for R software
deb https://cloud.r-project.org/bin/linux/ubuntu xenial/" | \
  sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base r-base-dev -y

# initial settings
echo "
local({
r <- getOption(\"repos\")
r[\"CRAN\"] <- \"http://cloud.r-project.org/\"
options(repos = r)
})" | sudo tee /etc/R/Rprofile.site

# devtools
echo "
userdir <- unlist(strsplit(Sys.getenv(\"R_LIBS_USER\"), .Platform\$path.sep))[1L]
dir.create(userdir, recursive = TRUE)
.libPaths(c(userdir, .libPaths()))
install.packages(\"devtools\")
" > r-packages.R
sudo apt-get install libcurl4-openssl-dev libssl-dev -y
R CMD BATCH r-packages.R
rm r-packages.R

# colorout for R
git clone --depth 1 https://github.com/jalvesaq/colorout.git
R CMD INSTALL colorout
rm -rf colorout

# rstudio
wget https://download1.rstudio.org/rstudio-xenial-1.0.153-amd64.deb
sudo apt-get install libjpeg62 -y
sudo dpkg -i rstudio-xenial-1.0.153-amd64.deb
rm rstudio-xenial-1.0.153-amd64.deb

# openblas for multi-thread
sudo apt-get install libopenblas-base libopenblas-dev -y

# RSTAN {{{1

# requeriments
sudo apt-get install build-essential g++ clang-3.8 libssl-dev -y

# TERMINAL SOFTWARE {{{1

# unison
sudo apt-get install unison -y

# silversearcher-ag
sudo apt-get install silversearcher-ag -y

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# ssh
sudo apt-get install openssh-server -y

# MANAGMENT AND SYSTEM SOFTWARE {{{1

# tweak-tool
sudo apt-get install gnome-tweak-tool -y

# synaptic
sudo apt-get install synaptic -y

# psensor
sudo apt-get install psensor -y

# redshift
sudo apt-get install redshift-gtk -y

# evolution
sudo apt-get install evolution -y

# OFFICE SOFTWARE {{{1

# latex
sudo apt-get install texlive-full -y
sudo apt-get install latexmk -y

# pdf viewer
sudo apt-get install okular -y

# SYNC SOFTWARE {{{1

# Mendeley
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
rm mendeleydesktop-latest

# dropbox
sudo apt-get install nautilus-dropbox -y

# Gitkraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb

# ENTERTAINMENT SOFTWARE {{{1

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys \
  BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | \
  sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client -y


# ADDITIONAL SOFTWARE {{{1

# virtual box
sudo apt-get install virtualbox -y

# video snapshot requirements for animation
sudo apt-get install blender openshot -y

# color picker
sudo apt-get install gpick -y

# DOTFILES {{{1
git clone --depth 1 https://github.com/ErickChacon/dotfiles-ubuntu.git
cd dotfiles-ubuntu && chmod +x pull.sh && ./pull.sh && cd ..
rm -rf dotfiles-ubuntu

# WEB SOFTWARE {{{1

# chrome
sudo apt-get install libxss1 libappindicator1 libindicator7 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

# PYTHON 2 {{{1
pip install --upgrade pip
pip install ipython --user

# PYTHON 3 {{{1

pip3 install --upgrade pip
pip3 install ipython --user
pip3 install unidecode --user # for ultisnips

# data science packages
pip3 install numpy --user
pip3 install scipy --user
sudo apt-get install python3-matplotlib -y
pip3 install tensorflow --user

# gpflow
git clone --depth 1 https://github.com/GPflow/GPflow.git
pip3 install GPflow/ --user
rm -rf GPflow
# JULIA {{{1
# sudo ln -s ~/julia-d386e40c17/bin/julia /usr/local/bin/julia
# ATOM {{{1
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt-get update
sudo apt-get install atom -y
# }}}
# CPP {{{1
sudo apt-get install libgoogle-perftools4 libgoogle-perftools-dev -y
sudo apt-get install google-perftools -y

# }}}

