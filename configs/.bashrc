# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias dc=cd
alias gs='git status'
alias ga='git add'
alias gap='git add -p'
alias gx='git checkout'
alias AC='cd ~/Dev/Viewer'
alias vim='nvim'

## MY SETTINGS
set -o vi
set editing-mode vi

# I am sane..
alias python=python3

# Extra binaries
source "$HOME/.cargo/env"
export PATH=~/Packages/rust-analyser:$PATH

#
export EDITOR=nvim
