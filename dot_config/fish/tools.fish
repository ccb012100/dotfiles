#!/usr/bin/env fish

# Put homebrew first because some tools are in the homebrew path

# homebrew
set PATH /home/linuxbrew/.linuxbrew/bin $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# atuin
atuin init fish --disable-up-arrow | source # use --disable-up-arrow to prevent binding it to autin search

# Base16 Shell
set BASE16_SHELL "$HOME/.config/base16-shell/"

# should be synced by chezmoi
if not test -d "$BASE16_SHELL"
    echo "$BASE16_SHELL does not exist!"
else
    source "$BASE16_SHELL/profile_helper.fish"
end

# base16-classic-dark
#base16-gruvbox-dark-hard
base16-material-darker
# base16-material-palenight
# base16-mellow-purple
# base16-outrun-dark
# base16-paraiso
# base16-phd

# dotnet CLI
complete -f -c dotnet -a "(dotnet complete (commandline -cp))"

# GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

# fd
#: Use fd (https://github.com/sharkdp/fd) instead of the default find
#: command for listing path candidates.
#: - The first argument to the function ($argv[1]) is the base path to start traversal
#: - See the source code (completion.{bash,zsh}) for the details.
function _fzf_compgen_path
    fd --hidden --follow --exclude ".git" . "$argv[1]"
end

# Use fd to generate the list for directory completion
function _fzf_compgen_dir
    fd --type d --hidden --follow --exclude ".git" . "$argv[1]"
end

function __fish_pipe_to_fzf -d "Pipe the current command to fzf"
    set -l cmd fzf
    fish_commandline_append " &| $cmd"
end

# forgit
export FORGIT_NO_ALIASES=true # disable default aliases
set PATH $PATH $HOME/tools/forgit/bin/ # use forgit as a git command (e.g. `git forgit add`)

# fzf
#: using https://github.com/PatrickF1/fzf.fish
set fzf_fd_opts --hidden # include hidden files

export FZF_COMPLETION_TRIGGER=';;'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
#: dracula theme
export FZF_DEFAULT_OPTS='--ansi --cycle --height=50% --reverse --info=inline --border=rounded --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"

function __fish_pipe_to_ripgrep -d "Pipe the current command to ripgrep"
    set -l cmd rg
    fish_commandline_append " &| $cmd"
end

# micro text editor
set MICRO_TRUECOLOR 1

# Ripgrep
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

# Rust
set PATH $HOME/.cargo/bin $PATH

# starship.rs
starship init fish | source
enable_transience

# zoxide
zoxide init --cmd j fish | source

# forgit
export FORGIT_NO_ALIASES=true # disable default aliases
set PATH $PATH $HOME/tools/forgit/bin/ # use forgit as a git command (e.g. `git forgit add`)
