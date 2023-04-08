# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc 
This is my custom .bashrc configuration for Bash.
##scripts
./bin/linux.sh: creates .TRASH, renames '.vimrc' to '.bup vimrc'
./bin/cleanup.sh: removes .vimrc and .TRASH in home directory
## Makefile
runs the './bin/linux.sh' and './bin/cleanup.sh'
## ./etc/vimrc
styles vim
## ./etc/bashrc custom
sets up variables
