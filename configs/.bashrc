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
export CMAKE_EXPORT_COMPILE_COMMANDS=1

#
export EDITOR=nvim


# ------------------CONDA--------------------------------
alias ca="conda activate"
alias cel="conda env list"

# ------------------GIT--------------------------------
alias gs="git status"

alias gf="git fetch"
alias gp="git push"
alias gpo="git push origin"
alias gpof="gpo --force-with-lease"
alias gmff="git merge --ff-only"

alias gr="git rebase"
alias gri="git rebase -i"

function grib {
git rebase -i $(git merge-base $1 HEAD)
}

alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gl="git log --graph --oneline --decorate --branches"
alias gla="git log --graph --oneline --decorate --all"
alias gll="git log --graph --oneline --decorate -22 --branches"
alias glla="git log --graph --oneline --decorate -22 --all"

alias ga="git add"
alias gap="git add -p"

alias gd="git diff"
alias gdc="git diff --cached"
alias gdw="git diff --word-diff=color --patience"
alias gdcw="git diff --cached --word-diff=color --patience"

alias gdel="git push origin --delete"

alias dirdiff="git difftool --dir-diff"

alias gb="git branch"
alias gc="git commit"

alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"

alias gx="git checkout"
alias gxb="git checkout -b"

alias gstat="git shortlog --summary --numbered"

# git grep in all stashes.
# https://stackoverflow.com/questions/42555410/is-it-possible-to-search-through-git-stash-items
git config --global alias.stashgrep '!f() { for i in `git stash list --format="%gd"` ; do git stash show -p $i | grep -H --label="$i" "$@" ; done ; }; f'
alias gsg="git stashgrep"

alias gif="git ls-files . --ignored --exclude-standard --others"
alias guf="git ls-files . --exclude-standard --others"

function greplog {
    git log --all --grep=$1
}

# List recently worked on branches
alias rb="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) \
%(color:yellow)%(refname:short)%(color:reset) (%(color:green)\
%(committerdate:relative)%(color:reset)) %(contents:subject)' --color=always | head -n10"

# Update local git branch from origin. If no argument is given, the
# current branch is updated
function gup () {
    if [ $# -eq 1 ]
    then
        git checkout $1 || return 1
    fi
    git pull origin --ff-only
}


if $(type -t __git_complete > /dev/null)
then
    # Enable bash tab-completion of our git aliases
    __git_complete ga _git_add
    __git_complete gb _git_branch
    __git_complete gc _git_commit
    __git_complete gd _git_diff
    __git_complete gf _git_fetch
    __git_complete gl _git_log
    __git_complete gla _git_log
    __git_complete gll _git_log
    __git_complete glla _git_log
    __git_complete gmff _git_merge
    __git_complete gp _git_push
    __git_complete gr _git_rebase
    __git_complete grim _git_rebase
    __git_complete grm _git_rebase
    __git_complete gx _git_checkout
    __git_complete gxb _git_checkout
    __git_complete gdel _git_checkout
fi
