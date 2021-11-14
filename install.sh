#!/usr/bin/env bash

script_dir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
here="${script_dir}/configs/"

# System default ~/.bashrc might hava a nice settings. Source your settings in the end
if grep -q 'BASH SOURCED FROM' ~/.bashrc; then
  echo "Bash already sourced"
else
  echo "# DO NOT EDIT. BASH SOURCED FROM ${here} at end of file" | cat - ~/.bashrc > temp && mv temp ~/.bashrc
  echo 'source ~/Dev/dotfiles/configs/.bashrc' >> ~/.bashrc
  echo "Appending source of your bashrc"
fi

ln -svf ${here}.tmux.conf ~/.tmux.conf
ln -svf ${here}.gitconfig ~/.gitconfig
ln -svf ${here}init.vim ~/.config/nvim/init.vim
ln -svf ${here}nvim_lua_configs/ ~/.config/nvim/nvim_lua_configs
