#!/bin/bash

cp -i .vimrc ~
cp -i .gvimrc ~
cp -i .zshrc ~
cp -i .shell-aliases ~

if [[ -d ~/.vim/snips/ ]]; then
    cp -i snips/* ~/.vim/snips/
elif [[ -d ~/.vim/UltiSnips/ ]]; then
    cp -i snips/* ~/.vim/UltiSnips/
else
    mkdir ~/.vim/snips/ && cp -i snips/* ~/.vim/snips/
fi
