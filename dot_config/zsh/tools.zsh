#!/usr/bin/env zsh
# External Zsh tools

# Put homebrew first because some tools are in the homebrew path

## homebrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

## zsh-completions

fpath=(/usr/local/share/zsh-completions $fpath) # activate zsh-completions
fpath=($HOME/.zsh/zsh-completions $fpath)       # activate zsh-completions

## kitty
export PATH=$HOME/.local/kitty.app/bin:$PATH
# convenience function
function update-kitty() {
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
}

## broot
source $HOME/.config/broot/launcher/bash/br

## zsh-autosuggestions
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=213"

## zsh-syntax-highlighting
# dracula theme; must come before sourcing the main package
source $HOME/tools/dracula-zsh-syntax-highlighting/zsh-syntax-highlighting.sh
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/highlighters

## starship
eval "$(starship init zsh)"

# set window title via starship
function set_win_title() {
    echo -ne "\033]0; $(realpath .) \007"
}

precmd_functions+=(set_win_title)

## nodenv
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"

## pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

## set Ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

## https://github.com/agkozak/zsh-z
#source "$HOME"/tools/.zsh-z/zsh-z.plugin.zsh
