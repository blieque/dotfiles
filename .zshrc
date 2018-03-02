[[ -f ~/.profile ]] && source ~/.profile

TERM="xterm-256color"

# Disable XON/XOFF flow control, which pauses processes on Ctrl+S.
stty -ixon

# Detect macOS and tweak some key mappings for it
if [[ `uname` == 'Darwin' ]]; then
    bindkey -e
    bindkey "${terminfo[khome]}" beginning-of-line
    bindkey "${terminfo[kend]}" end-of-line
    bindkey "${terminfo[kdch1]}" delete-char
fi

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Set up basic prompt
autoload -Uz promptinit
promptinit
prompt adam1

# Set up Powerline prompt

if [[ "$powerline_script" == "" ]]; then
    powerline_script=~/source/python/powerline-shell/powerline-shell.py
fi

function powerline_precmd() {
    PS1=$("$powerline_script" --shell zsh)
}

function install_powerline_precmd() {
    for s in "${precmd_functions[@]}"; do
        [[ "$s" == "powerline_precmd" ]] && return
    done
    precmd_functions+=(powerline_precmd)
}

install_powerline_precmd
