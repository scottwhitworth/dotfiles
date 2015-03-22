#!/bin/bash -e

mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/jelera/vim-javascript-syntax.git ~/.vim/bundle/vim-javascript-syntax
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

DIR=`pwd`
ln -s "$DIR/vimrc" ~/.vimrc

mkdir -p ~/.vim/ftdetect

echo '
autocmd BufRead,BufNewFile *.md set ft=markdown
' > ~/.vim/ftdetect/markdown.vim

mkdir -p ~/.vim/after/ftplugin

echo '
setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal tabstop=2
' > ~/.vim/after/ftplugin/javascript.vim
