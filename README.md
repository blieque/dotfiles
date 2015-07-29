# dotfiles

A selection of dotfiles and other little Linux scripty things.

* `.vimrc` is a pretty typical Vim configuration script. It changes a lot of the software's options; loads and configures a bunch of plugins; and has a number of key mappings. Place this file in your home directory (`~`) to use.

* `.gvimrc` is less impressive. It loads a session file if it finds one, and sets the font to Terminus at 9 pt. It also includes some key mappings that aren't possible in terminal Vim sue to the way modifiers are handled. Place this file in your home directory (`~`) to use.

* `.zshrc` is a configuration script for Zsh, a great alternative to the usual Bash shell. The script makes tab completion significantly better and loads `powerline-shell`. Place this file in your home directory (`~`) to use.

* `shell-aliases` is a collection of handy aliases for commands that will work with Bash and Zsh, and likely some other shells too. Place this file in `/etc` and add `source /etc/shell-aliases` to `/etc/profile` to use.

* `colors/` is a Vim colorscheme directory. Place this directory and its contents in your `~/.vim/` directory to enjoy some nice new colours.

    * `solarized.vim` is almost exactly [`Solarized for Vim`](https://github.com/altercation/vim-colors-solarized), but with a couple of my own tweaks.

* `plugin/` is a Vim plugin directory. Place this directory and its contents in your `~/.vim/` directory to enable some extra functionality.

    * `functions.vim` contains a function for changing Vim settings when editing Markdown documents. If you don't have a copy of this in the right place on your machine, my `.vimrc` will throw the occasional error.

* `themes/` holds themes I have written for [Powerline Shell](https://github.com/blieque/powerline-shell).

    * `hollow.py` is a theme I made for Powerline Shell. I used the name Hollow because it was listed as a synonym of "meaningless", and the name of this theme is just that. To use the theme, clone the `powerline-shell` repository, place `hollow.py` in the `themes` directory, and change the `THEME` line in `config.py` to `THEME = 'hollow'`. Run the `install.py` script and then use the newly generated `powerline-shell.py` script.

![Hollow colour scheme screen shot](https://raw.githubusercontent.com/blieque/dotfiles/master/images/hollow-screenshot-8.png)

![Hollow colour scheme screen shot with larger text](https://raw.githubusercontent.com/blieque/dotfiles/master/images/hollow-screenshot-14.png)
