#!/bin/bash -e

mkdir -p ~/.vim/pack/colors/opt/ ~/.vim/pack/syntax/opt
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/colors/opt/vim-solarized8
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/syntax/opt/vim-go
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/pack/syntax/opt/vim-javascript
git clone https://github.com/posva/vim-vue.git ~/.vim/pack/syntax/opt/vim-vue

DIR=`pwd`
ln -s "$DIR/vimrc" ~/.vimrc
ln -s "$DIR/after" ~/.vim/after
