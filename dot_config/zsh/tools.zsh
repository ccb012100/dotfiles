#!/usr/bin/env zsh
# External Zsh tools

# IMPORTANT! Put homebrew first because some tools are in the homebrew path

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath) # activate zsh-completions
fpath=($HOME/.zsh/zsh-completions $fpath)       # activate zsh-completions## homebrew

# homebrew
set PATH /opt/homebrew/bin $PATH
eval "$(/opt/homebrew/bin/brew shellenv)" # homebrew

# starship
eval "$(starship init zsh)"

#: set window title via starship
function set_win_title() {
    echo -ne "\033]0; $(realpath .) \007"
}

precmd_functions+=(set_win_title)

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm

# ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"
