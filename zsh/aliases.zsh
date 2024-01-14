# -------------------------------------------------------------------
# use nocorrect alias to prevent auto correct from "fixing" these
# -------------------------------------------------------------------
#alias foobar='nocorrect foobar'
alias g8='nocorrect g8'
alias cookbook='nocorrect cookbook'

alias grep='egrep -n --color'

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias 'bk=cd $OLDPWD'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias lh='ls -d .*' # show hidden files/directories only
    alias lsd='ls -aFhlG'
    alias l='ls -al'
    alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
    alias ll='ls -GFhl' # Same as above, but in long listing format
fi
if [[ $IS_LINUX -eq 1 ]]; then
    alias lh='ls -d .* --color' # show hidden files/directories only
    alias lsd='ls -aFhlG --color'
    alias l='ls -al --color'
    alias ls='ls -GFh --color' # Colorize output, add file type indicator, and put sizes in human readable format
    alias ll='ls -GFhl --color' # Same as above, but in long listing format
fi
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias dus='du -sckx * | sort -nr' #directories sorted by size

alias wordy='wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias filecount='find . -type f | wc -l' # number of files (not directories)

# these require zsh
alias ltd='ls *(m0)' # files & directories modified in last day
alias lt='ls *(.m0)' # files (no directories) modified in last day
alias lnew='ls *(.om[1,3])' # list three newest


# -------------------------------------------------------------------
# random shortcuts
# -------------------------------------------------------------------
alias v='vim'

# -------------------------------------------------------------------
# remote machines
# -------------------------------------------------------------------
alias alpha='ssh alpha'
alias saturn='ssh saturn'
alias zeus='ssh zeus'
alias tierra='ssh -X tierra'
alias esx='ssh root@esxi'

# ------------------------------------------------------------------
# tmux stuff
# ------------------------------------------------------------------
alias takeover="tmux detach -a"
alias abase="tmux attach -t base || tmux new -s base"
alias arun="tmux attach -t run || tmux new -s run"
# Force tmux to use 256 colors
alias tmux='TERM=screen-256color-bce tmux'

# ------------------------------------------------------------------
# git stuff
# ------------------------------------------------------------------
# leverage aliases from ~/.gitconfig
alias gh='git hist'
alias gt='git today'
# curiosities
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"
# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# alias to cat this file to display
alias acat='< ~/.zsh/aliases.zsh'
alias fcat='< ~/.zsh/functions.zsh'
alias sz='source ~/.zshrc'
alias open='xdg-open'
alias reload='source ~/.zshrc'

# tools
alias df='df -h'
# get top process eating memory
alias psmem='ps -e -orss=,args= | sort -b -k1,1n'
alias psmem10='ps -e -orss=,args= | sort -b -k1,1n | head -10'
# get top process eating cpu if not work try excute : export LC_ALL='C'
alias pscpu='ps -e -o pcpu,cpu,nice,state,cputime,args | sort -k1 -nr'
alias pscpu10='ps -e -o pcpu,cpu,nice,state,cputime,args | sort -k1 -nr | head -10'
# top10 of the history
alias hist10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

# Programs
alias s='code'

# misc
alias wiki='dig +short txt $1.wp.dg.cx'
