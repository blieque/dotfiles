#!/bin/bash

dotfiles=(.vimrc .gvimrc .zshrc .shell-aliases)

for dotfile in "${dotfiles[@]}"; do
    if [[ -r $dotfile ]]; then
        echo -e "\e[33m$dotfile diff:\e[0m"
        diff $dotfile ~/$dotfile
    fi
done

if [[ -d ~/.vim/snips/ || -d ~/.vim/UltiSnips/ ]]; then
    snips_dir=~/.vim/snips
    [[ -d ~/.vim/UltiSnips ]] && snips_dir=~/.vim/UltiSnips

    snips=(javascript html)
    for snip in "${snips[@]}"; do
        snip_file=$snip.snippets
        echo -e "\e[33m$snip_file diff:\e[0m"
        diff snips/$snip_file $snips_dir/$snip_file
    done
fi
