#!/usr/bin/env zsh
# zsh aliases

### built-in tools

# easy way to call aliased commands
alias ,=command
alias back='cd -'
alias cls=clear
alias cp='cp -iv'
alias cpr='cp -r'
alias ezsh='exec zsh'
alias grep='grep --color=auto'
alias his=history
alias jctl=journalctl
# last exit code
alias lec='echo $?'
alias mkdir='mkdir -v'
alias mv='mv -iv'
# print $PATH formatted as one entry per line
alias path='sed "s/:/\n/g" <<< "$PATH"'
alias rm='rm -I'
alias rmdir='rmdir -v'
alias rmr='rm -r'
alias uuid='uuidgen --random'

## cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

## ls
# replace ls with eza
alias ls='eza --git --icons --group-directories-first -F'
alias tree='eza --tree'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'
alias llt='eza -l -t modified --sort newest'
alias llat='eza -al -t modified --sort newest'

### external tools
alias bat=batcat
alias brewup='brew upgrade'
# open current directory in VS Code
alias c.='code .'
alias c=code
alias difftastic=difft
alias e=emacs
# start emacs server if it's not already running
# alias emacs='emacsclient -nc -a=""'
alias etty='emacsclient -nw'
# show hidden files when doing fd search
alias fd='fd -H'
# build the go project in the cwd
alias gob='go build .'
# run the go project in the cwd
alias gor='go run .'
alias jl=jless
# colorize json
alias jq='jq -C'
# run local version of ts-node
alias nts='npx ts-node'
alias py=python3
alias pym='python3 -m'
alias python=python3
# verbatim search (i.e. disable regex)
alias rgf='rg -F'
# case-insensitive search
alias rgi='rg -i'
alias sesh='tmux new-session -A -s sesh'
alias v=nvim
alias vi=nvim
alias vim=nvim

##git
alias g=git
alias ga='git add'
alias gaa='git aa'
alias gacm='git acm'
alias gc='git c'
alias gcm='git cm'
alias gd='git d'
alias gds='git ds'
alias gf='git f'
alias gl='git l'
alias gp='git pull'
alias gps='git push'
alias gs='git s'
alias gsl='git sl'
alias gsvv='git status -vv'
## npm
alias nr='npm run'
alias nrb='npm run build'
alias nrl='npm run lint'
alias nrestart='npm run build && npm run start'
alias nrs='npm run start'
alias nrt='npm run test'