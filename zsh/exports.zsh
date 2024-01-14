# /usr/local/bin ?
export PATH=$PATH:/usr/local/sbin:$HOME/bin:/sbin

# remove duplicate entries
typeset -U PATH

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'

# Default editor
if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='subl -n'
fi
if [[ $IS_LINUX -eq 1 ]]; then
    export EDITOR='vi'
fi

# Set LC_ALL="UTF8" 
export LC_ALL=es_ES.UTF-8
export LC_CTYPE=es_ES.UTF-8
export LANG=es_ES.UTF-8

