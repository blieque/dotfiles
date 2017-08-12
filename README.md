# dotfiles

A selection of dotfiles and other little Linux scripty things.

* **Shell and editor config files**

    * `.vimrc` is a pretty typical Vim configuration script. It changes a lot of the software's options; loads and configures a bunch of plugins; and has a number of key mappings. Place this file in your home directory (`~`) to use.

    * `.gvimrc` is less impressive. It loads a session file if it finds one, and sets the font to Terminus at 9 pt. It also includes some key mappings that aren't possible in terminal Vim sue to the way modifiers are handled. Place this file in your home directory (`~`) to use.

    * `.bashrc` is a configuration script for Bash. The `PS1` is just about the only exciting part.

    * `.zshrc` is a configuration script for Zsh, a great alternative to the usual Bash shell. The script makes tab completion significantly better and loads `powerline-shell`. Place this file in your home directory (`~`) to use.

    * `.shell-aliases` is a collection of handy aliases for commands that will work with Bash and Zsh, and likely some other shells too. To use it globally (with all users), rename it to `shell-aliases`, place it in `/etc`, and add `source /etc/shell-aliases` to `/etc/profile`. You'll need root permissions to do this, mind.

    * `.mac-shell-rc` is more shell configuration for Bash/Zsh specifically for macOS environments.

* **Repository scripts**

    * `fetch.sh` will copy the active configuration files from your home directory to the repository. This is mostly to make updating the repository easier for me.

    * `install.sh` will attempt to copy these configuration files to your home directory. It won't overwrite any existing config unless you tell it to.

* **Other resources**

    * `colors/` is a Vim colorscheme directory. Place this directory and its contents in your `~/.vim/` directory to enjoy some nice new colours.

        * `solarized.vim` is almost exactly [*Solarized for Vim*](https://github.com/altercation/vim-colors-solarized), but with a couple of my own tweaks.

    * `snips/` contains snippets definitions for the [UltiSnips](https://github.com/SirVer/UltiSnips) Vim plugin. To use, copy this directory to `~/.vim/` and add `let g:UltiSnipsSnippetDirectories=["snips", "UltiSnips"]` to `.vimrc`, or just copy its contents to `~/.vim/UltiSnips/` (might need creating).

        * `javascript.snippets` is a handful of JavaScript snippets for Vim, shockingly.

        * `html.snippets` is a handful of alterations to the standard HTML snippets which use actual HTML5, and are just better.

    * `themes/` holds themes I have written for [Powerline Shell](https://github.com/blieque/powerline-shell).

        * `hollow.py` is a theme I made for Powerline Shell. To use the theme, clone the `powerline-shell` repository, place `hollow.py` in the `themes` directory, and change the `THEME` line in `config.py` to `THEME = 'hollow'`. Run the `install.py` script and then use the newly generated `powerline-shell.py` script.

![Hollow colour scheme screen shot](https://raw.githubusercontent.com/blieque/dotfiles/master/images/hollow-screenshot-8.png)

![Hollow colour scheme screen shot with larger text](https://raw.githubusercontent.com/blieque/dotfiles/master/images/hollow-screenshot-14.png)
