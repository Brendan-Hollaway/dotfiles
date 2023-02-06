#!/usr/bin/env bash

# install vim-plug
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install the tmux plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy over the actual "dotfiles" themselves
cp ~/dotfiles/.vimrc ~/.
cp ~/dotfiles/.inputrc ~/.
cp ~/dotfiles/.pythonrc ~/.
cp ~/dotfiles/tmux/.tmux.conf.no_autoload ~/.

# Be careful with this one, if you have a custom setup already!
# TODO: make a version of my .bashrc that I can just `>>` on to the end
# of the existing one, and do some tests to see if the .bashrc exists, etc.
cp ~/dotfiles/.bashrc ~/.

# Install powerline fonts
mkdir -p ~/.local/share/fonts cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
