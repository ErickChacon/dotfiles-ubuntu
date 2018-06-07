
# Download base image ubuntu 16.04 {{{1
FROM ubuntu:16.04

# Update and upgrade {{{1
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y locales && locale-gen en_GB.UTF-8
ENV LANG=en_GB.UTF-8 LANGUAGE=en_GB:en LC_ALL=en_GB.UTF-8

# Software for installation and version control {{{1
RUN apt-get install -y git curl

# Neovim {{{1

# requirements
RUN apt-get install -y software-properties-common python-pip python3-pip && \
  pip2 install neovim && \
  pip3 install neovim && \
  apt-get install -y ruby ruby-dev && \
  gem install neovim

# install
RUN add-apt-repository ppa:neovim-ppa/stable -y && \
  apt-get update && \
  apt-get install -y neovim exuberant-ctags

# Tmux {{{1

# dependencies
RUN apt-get install -y libevent-dev libncurses-dev build-essential

# install
RUN curl -sL https://github.com/tmux/tmux/releases/download/2.5/tmux-2.5.tar.gz | \
  tar xz && \
  cd tmux-2.5 && \
  ./configure && make && \
  make install && \
  cd .. && \
  rm -rf tmux-2.5

# # italic and true color
# RUN git clone --depth 1 https://github.com/ErickChacon/dotfiles-ubuntu.git && \
#   tic dotfiles-ubuntu/xterm-256color-italic.terminfo && \
#   rm -rf dotfiles-ubuntu

RUN curl -OL \
  https://github.com/ErickChacon/dotfiles-ubuntu/raw/master/xterm-256color-italic.terminfo && \
  tic xterm-256color-italic.terminfo && \
  rm xterm-256color-italic.terminfo


# Add my user {{{1
ARG user1=chaconmo
RUN useradd -ms /bin/bash $user1
USER $user1
WORKDIR /home/$user1

# User configuration: terminal settings and dotfiles {{{1

# bash-it
RUN git clone --depth 1 https://github.com/Bash-it/bash-it.git ~/.bash_it && \
  ~/.bash_it/install.sh -n

# # powerline font
# RUN cd && git clone --depth 1 https://github.com/powerline/fonts.git && \
#   fonts/install.sh && \
#   rm -rf fonts

# # Devicon font
# RUN cd && git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && \
#   cd nerd-fonts && ./install.sh DroidSansMono && cd .. && \
#   rm -rf nerd-fonts

# vim plugin manager
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# provide plugins for nvim
RUN mkdir -p ~/.config/nvim/ && \
  curl -o ~/.config/nvim/init.vim -L \
  https://github.com/ErickChacon/dotfiles-ubuntu/raw/master/nvim/init-docker.vim && \
  nvim --headless +PlugInstall +UpdateRemotePlugins +qall

# Dotfiles
RUN git clone --depth 1 https://github.com/ErickChacon/dotfiles-ubuntu.git && \
  cd dotfiles-ubuntu && chmod +x pull-docker.sh && ./pull-docker.sh && cd .. && \
  rm -rf dotfiles-ubuntu


# Vim packages
# RUN nvim -i NONE -c PlugInstall -c quitall > /dev/null 2>&1
# RUN nvim +'PlugInstall --sync' +qa
# RUN nvim +silent +PlugInstall +qall
# RUN nvim +'PlugUpdate --sync' +qa
# RUN nvim +PlugUpdate +only
# RUN nvim +'PlugUpdate --sync' +qa

# RUN nvim +PlugInstall +qall
# RUN nvim +PlugInstall
# RUN nvim -c 'PlugInstall' -c 'UpdateRemotePlugins' -c 'qa!' 
# RUN nvim +PlugInstall +qall 2> /dev/null > /dev/null
# RUN nvim -E -u NONE -S ~/.config/nvim/init.vim +PlugInstall +qall > /dev/null || true

# CMD ["nvim", "-v"]
# ENTRYPOINT nvim
