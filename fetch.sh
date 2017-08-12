#!/bin/bash

[[ -f ~/.vimrc ]] && cp ~/.vimrc .
[[ -f ~/.gvimrc ]] && cp ~/.gvimrc .
[[ -f ~/.bashrc ]] && cp ~/.bashrc .
[[ -f ~/.zshrc ]] && cp ~/.zshrc .
[[ -f ~/.shell-aliases ]] && cp ~/.shell-aliases .
[[ -f ~/.mac-shell-rc ]] && cp ~/.mac-shell-rc .
[[ -d ~/.vim/snips && "$(ls -A ~/.vim/snips)" ]] && cp ~/.vim/snips/* snips/
