#!/usr/bin/env fish

# call functions
abbr --add update update_packages

# fish
abbr --add efish exec fish
abbr --add func functions
abbr --add funcs functions
# dotdot copied from <https://fishshell.com/docs/current/interactive.html#abbreviations>
abbr --add dotdot --regex '^\.\.+$' --function multicd

# generic Linux utilities
abbr --add , command # easier way to call aliased commands
abbr --add back cd -
abbr --add chx chmod +x # make file executable
abbr --add cls clear
abbr --add cp cp -iv
abbr --add cpr cp -r
abbr --add his history
abbr --add jctl journalctl
abbr --add l ls
abbr --add lec 'echo $status' # last exit code
abbr --add lns ln -s
abbr --add mv mv -iv
abbr --add rm rm -i
abbr --add rmrf rm -rf
abbr --add sctl systemctl

# bat
abbr --add b bat
# brew
abbr --add brewup brew upgrade
# cargo
abbr --add jj cargo # easer to type than 'ca'
abbr --add jjb cargo build
abbr --add jjr cargo run
# chezmoi
abbr --add cm chezmoi
# cht.sh
abbr --add ch cht.sh
abbr --add cht cht.sh
abbr --add cheat cht.sh
# datasette
abbr --add ds datasette
# difftastic
abbr --add difftastic difft
# docker
abbr --add do docker
abbr --add doc docker compose
abbr --add doi docker image
abbr --add dois docker images
abbr --add dop docker ps -a
abbr --add dops docker ps
abbr --add dor docker run
# dotnet
abbr --add dn dotnet
abbr --add dnb dotnet build
abbr --add dnc dotnet clear
abbr --add dnf dotnet format
abbr --add dnr dotnet run
abbr --add dns dotnet user-secrets
abbr --add dnt dotnet test
abbr --add dnu dotnet user-secrets
# fd
abbr --add fd 'fd -H'
abbr --add fde 'fd --extension'
abbr --add fdf 'fd --type file'
abbr --add fdh 'fd -H' # show hidden files when doing fd search
# golang
abbr --add gg go
abbr --add ggb go build
abbr --add ggr go run
# jless
abbr --add jl jless
# kubectl
abbr --add kub kubectl
# mdcat
abbr --add md mdcat
abbr --add mdp mdcat --paginate
abbr --add readme mdcat --paginate README.md
# micro
abbr --add m micro
# npm
abbr --add nr 'npm run'
abbr --add nrb 'npm run build'
abbr --add nrl 'npm run lint'
abbr --add nrestart 'npm run build && npm run start'
abbr --add nrs 'npm run start'
abbr --add nrt 'npm run test'
# pinfo
abbr --add info pinfo
# python
abbr --add py python3
abbr --add pym python3 -m
abbr --add python python3
# ranger
abbr --add ra ranger
# ripgrep
abbr --add rgf rg --fixed-strings # verbatim search (i.e. disable regex)
abbr --add rgi rg --ignore-case # case-insensitive search
abbr --add rguuu rg -uuu # same as `rg --no-ignore --hidden --binary` & equiv. to `grep -r`
# trash-cli
abbr --add del trash-put
abbr --add trash trash-put
# ts-node
abbr --add tsn 'npx ts-node' # run local version of ts-node
# uuidgen
abbr --add uuid uuidgen --random
# vim
abbr --add v vim
abbr --add vi vim
abbr --add zd z dotfiles
abbr --add zo zoxide
# vs code
abbr --add c code
abbr --add c. 'code .' # open current directory in VS Code
abbr --add cconf "code $HOME/.config"
abbr --add cfish "code $__fish_config_dir" # open fish config directory in vscode
abbr --add cgit "code $HOME/.config/git"
# wslu
abbr --add open wslview
abbr --add sctl sysmtemctl
# zoxide
abbr --add jq zoxide query
