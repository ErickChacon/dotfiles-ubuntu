#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="/home/chaconmo/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
# export BASH_IT_THEME='cupcake'
export BASH_IT_THEME='zork'
# export BASH_IT_THEME='bobby'
# export BASH_IT_THEME='axin'
# export BASH_IT_THEME='brainy'
# export BASH_IT_THEME='nwinkler_random_colors'
# export BASH_IT_THEME='powerline-multiline'
# export BASH_IT_THEME='powerline-naked'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# For tmuxinator
export EDITOR='nvim'
source ~/.bin/tmuxinator.bash

# For italic on tmux
# export TERM=screen-256color-italic

# Load Bash It
source $BASH_IT/bash_it.sh
