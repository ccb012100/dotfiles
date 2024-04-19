#!/usr/bin/env bash

# IMPORTANT! Put homebrew first because some tools are in the homebrew path

# homebrew
export PATH="/opt/homebrew/bin:$HOME/bin:$HOME/.local/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)" # homebrew

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# starship
eval "$(starship init bash)"

function set_win_title() {
  echo -ne "\033]0; $(basename "$PWD") \007"
}

starship_precmd_user_func="set_win_title"
