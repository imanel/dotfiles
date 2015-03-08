export ZSH=$HOME/.oh-my-zsh

# Auto-complete should be case-sensitive
CASE_SENSITIVE="true"

fpath=(/usr/local/share/zsh-completions $fpath)

plugins=(bundler chruby common-aliases docker git rails ruby sublime terminalapp vagrant)

source $ZSH/oh-my-zsh.sh
