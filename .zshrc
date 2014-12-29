export ZSH=$HOME/.oh-my-zsh

fpath=(/usr/local/share/zsh-completions $fpath)

plugins=(bundler chruby common-aliases docker git rails ruby sublime themes vagrant)

source $ZSH/oh-my-zsh.sh
