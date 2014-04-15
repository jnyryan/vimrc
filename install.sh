#!/bin/bash

mkdir -p .vim
mkdir -p bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo installing pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
  curl -Sso ~/.vim/autoload/pathogen.vim \
      https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "installing solarized color scheme"
$ git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle

echo "Installing the Silver Seracher - Ag"
brew install the_silver_searcher
