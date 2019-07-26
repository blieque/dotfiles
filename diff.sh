#!/bin/bash

dotfiles=(.vimrc .gvimrc .bashrc .zshrc .shell-aliases)

for dotfile in "${dotfiles[@]}"; do
  if [[ -r $dotfile ]]; then
    tput setaf 3 && tput bold && echo "$dotfile diff:" && tput sgr0
    diff $dotfile ~/$dotfile
    echo
  fi
done

if [[ -d ~/.vim/snips/ || -d ~/.vim/UltiSnips/ ]]; then
  snips_dir=~/.vim/snips
  [[ -d ~/.vim/UltiSnips ]] && snips_dir=~/.vim/UltiSnips

  snips=(javascript html)
  for snip in "${snips[@]}"; do
    snip_file=$snip.snippets
    tput setaf 3 && tput bold && echo "$snip_file diff:" && tput sgr0
    diff snips/$snip_file $snips_dir/$snip_file
    echo
  done
fi
