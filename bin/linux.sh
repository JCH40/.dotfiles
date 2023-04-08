#!/bin/bash
###Checks if os is Linux###
if [["$(uname)" != "Linux"]];
then echo "Error: Linux system required" >> linuxsetup.log
###exit###
exit 1
fi
###check trash existence###
if [[! -d "$HOME/.TRASH"]];
then mkdir "$HOME/.TRASH"
fi
###change .vimrc name is it already exist in home dir###
if [[ -f "$HOME/.vimrc"]];
then mv "$HOME/.vimrc" "$HOME/.bup_vimrc"
	echo "The current .vimrc file was changed to
‘.bup_vimrc’" >> linuxsetup.log
fi
###redirect etc/vimrc to ~/.vimrc###
cat etc/.vimrc > "$HOME/.vimrc"
echo "Redirected /etc/.vimrc contents to $HOME/.vimrc" >> linuxsetup.log
###add ‘source ∼/.dotfiles/etc/bashrc custom' statement###
echo "source ∼/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"
echo "‘source ∼/.dotfiles/etc/bashrc custom' added to back of $HOME/.bashrc" >> linuxsetup.log 
