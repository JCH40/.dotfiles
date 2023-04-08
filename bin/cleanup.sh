#!/bin/bash
###removes .vimrc in ~###
rm ~/.vimrc
###removes source ∼/.dotfiles/bashrc custom###
sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc
###removes .TRASH in ~###
rm -rf ~/.TRASH
