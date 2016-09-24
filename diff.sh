#!/bin/bash

echo '.vimrc diff:'
diff .vimrc ~/.vimrc
echo '.gvimrc diff:'
diff .gvimrc ~/.gvimrc
echo '.zshrc diff:'
diff .zshrc ~/.zshrc
echo '.shell-aliases diff:'
diff .shell-aliases ~/.shell-aliases
