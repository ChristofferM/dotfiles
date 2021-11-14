#!/usr/bin/env bash

here=~/Dev/dotfiles/configs/
ln -svf ${here}.bashrc ~/.bashrc
ln -svf ${here}.tmux.conf ~/.tmux.conf
ln -svf ${here}.gitconfig ~/.gitconfig
ln -svf ${here}init.vim ~/.config/nvim/init.vim
ln -svf ${here}nvim_lua_configs/ ~/.config/nvim/nvim_lua_configs
