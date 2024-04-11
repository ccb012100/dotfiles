#!/usr/bin/env bash

# dotnet CLI
#: bash parameter completion for the dotnet CLI
function _dotnet_bash_complete() {
  local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n' # On Windows you may need to use use IFS=$'\r\n'
  local candidates

  read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)

  read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
}

complete -f -F _dotnet_bash_complete dotnet

# fd
#: Use fd (https://github.com/sharkdp/fd) instead of the default find
#: command for listing path candidates.
#: - The first argument to the function ($argv[1]) is the base path to start traversal
#: - See the source code (completion.{bash,zsh}) for the details.
function _fzf_compgen_path() {
  # shellcheck disable=SC2154
  fd --hidden --follow --exclude ".git" . "${argv[1]}"
}

# Use fd to generate the list for directory completion
function _fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "${argv[1]}"
}

export fzf_fd_opts='--hidden' # include hidden files

# fzf
#: using https://github.com/PatrickF1/fzf.fish
export FZF_COMPLETION_TRIGGER=';;'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
#: dracula theme
export FZF_DEFAULT_OPTS='--cycle --layout=reverse --info=inline --border --margin=1 --padding=1 --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"

#: keybindings
#: synced by chezmoi
fzfkeybinds="$HOME"/bin/fzf-keybindings.bash
if [[ ! -f "$fzfkeybinds" ]]; then
  echo "$fzfkeybinds does not exist!"
else
  source "$fzfkeybinds"
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Ripgrep
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

# starship
eval "$(starship init bash)"

function set_win_title() {
  echo -ne "\033]0; $(basename "$PWD") \007"
}

starship_precmd_user_func="set_win_title"

# zoxide
eval "$(zoxide init bash)"
