
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

# italic and true color
RUN curl -OL \
  https://github.com/ErickChacon/dotfiles-ubuntu/raw/master/xterm-256color-italic.terminfo && \
  tic xterm-256color-italic.terminfo && \
  rm xterm-256color-italic.terminfo


# R {{{1

# Set noninteractive installs
ENV DEBIAN_FRONTEND noninteractive

# pandoc
RUN apt-get install -y pandoc pandoc-citeproc evince

# install
RUN apt-get install apt-transport-https && \
  echo "\n## Mirror for R software" | tee -a /etc/apt/sources.list && \
  add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu xenial/" && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 && \
  apt-get update && \
  apt-get install r-base r-base-dev -y

# x11
RUN apt-get install -y --no-install-recommends \
    libx11-6 \
    libxss1 \
    libxt6 \
    libxext6 \
    libsm6 \
    libice6 \
    xdg-utils && \
    rm -rf /var/lib/apt/lists/*

# # Add my user {{{1
# ARG user1=chaconmo
# RUN useradd -ms /bin/bash $user1
# USER $user1
# WORKDIR /home/$user1
#
# # User configuration: terminal settings and dotfiles {{{1
#
# # bash-it
# RUN git clone --depth 1 https://github.com/Bash-it/bash-it.git ~/.bash_it && \
#   ~/.bash_it/install.sh -n
#
# # # powerline font
# # RUN cd && git clone --depth 1 https://github.com/powerline/fonts.git && \
# #   fonts/install.sh && \
# #   rm -rf fonts
#
# # # Devicon font
# # RUN cd && git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && \
# #   cd nerd-fonts && ./install.sh DroidSansMono && cd .. && \
# #   rm -rf nerd-fonts
#
# # vim plugin manager
# RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#
# # install plugins for nvim
# RUN mkdir -p ~/.config/nvim/ && \
#   curl -o ~/.config/nvim/init.vim -L \
#   https://github.com/ErickChacon/dotfiles-ubuntu/raw/master/nvim/init-docker.vim && \
#   nvim --headless +PlugInstall +UpdateRemotePlugins +qall
#
# # Dotfiles
# RUN git clone --depth 1 https://github.com/ErickChacon/dotfiles-ubuntu.git && \
#   cd dotfiles-ubuntu && chmod +x pull-docker.sh && ./pull-docker.sh && cd .. && \
#   rm -rf dotfiles-ubuntu
#
# # CMD ["nvim", "-v"]
# # ENTRYPOINT nvim
