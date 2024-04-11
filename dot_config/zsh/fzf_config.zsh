#!/usr/bin/env zsh
# fzf
# https://github.com/junegunn/fzf

# enable fzf keybindings for Zsh:
source /usr/share/doc/fzf/examples/key-bindings.zsh
# enable fuzzy auto-completion for Zsh:
source /usr/share/doc/fzf/examples/completion.zsh

export FZF_COMPLETION_TRIGGER=';;' # default is '**'
bindkey '^i' fzf-completion        # also binds <TAB> key

# use ripgrep instead of find
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git' --exclude node_modules"
#export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_COMPLETION_OPTS='--border --info=inline'
#color theme: tomasr/molokai
export FZF_DEFAULT_OPTS="--height=75% --cycle --multi --info=inline --border \
--tabstop=4 --header-lines=1 \
--bind='?:toggle-preview,f12:execute(less -f {})' \
--header=$'[ (?) Toggle preview ][ (F12) pipe to less ]' \
--preview-window=:hidden --preview 'batcat --style=numbers --color=always {}' \
--color=bg+:#293739,bg:#1B1D1E,border:#808080,spinner:#E6DB74,hl:#7E8E91,fg:#F8F8F2,header:#7E8E91,info:#A6E22E,pointer:#A6E22E,marker:#F92672,fg+:#F8F8F2,prompt:#F92672,hl+:#F92672"

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# find-in-file - usage: fif <searchTerm>
# from https://github.com/junegunn/fzf/wiki/examples
fif() {
  if [ ! "$#" -gt 0 ]; then
    echo "Need a string to search for!"
    return 1
  fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

# fzf clobbers the READLINE binding, so we rebind it here
bindkey '^t' transpose-chars
