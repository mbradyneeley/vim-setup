#!/bin/bash

cat copyVimrc > ~/.vimrc
# Install vim pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install solarized color
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized.git

source ~/.vimrc

# Install vim plugins from vim-plug
vim +'PlugInstall --sync' +qa
