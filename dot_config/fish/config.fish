if status is-interactive # Commands to run in interactive sessions can go here
    echo Loading config.fish...
    set EDITOR nvim

    set PATH $HOME/bin $PATH
    set PATH $PATH $HOME/.local/bin
    set PATH /home/linuxbrew/.linuxbrew/opt/coreutils/libexec/gnubin $PATH

    # symlinks to Windows binaries
    if not test -f $HOME/bin/chrome
        ln -sv '/mnt/c/Program Files/Google/Chrome/Application/chrome.exe' $HOME/bin/chrome
    end

    set BROWSER $HOME/bin/chrome #: necessary so that we can use xdg-open from WSL

    if not test -f $HOME/bin/code
        ln -sv "/mnt/c/Program Files/Microsoft VS Code/bin/code" $HOME/bin/code
    end

    #: system clipboard
    if not test -f $HOME/bin/clip
        ln -sv /mnt/c/windows/SysWOW64/clip.exe $HOME/bin/clip
    end

    #: Windows PowerShell
    if not test -f $HOME/bin/pwsh-win
        ln -sv '/mnt/c/Program Files/PowerShell/7/pwsh.exe' $HOME/bin/pwsh-win
    end

    # less configuration
    #: -X leaves file contents on the screen when less exits.
    #: -F makes less quit if the entire output can be displayed on one screen.
    #: -R displays ANSI color escape sequences in "raw" form.
    export LESS="-XFR"

    export GPG_TTY="$(tty)"

    stty -ixon # disable XON/XOFF control flow

    # source config files
    for x in "$HOME"/.config/fish/{abbreviations,git-abbreviations,aliases,tools}.fish
        source $x
    end

    source $HOME/.local/config-local.fish # local config unique to the machine

    # keyboard bindings
    bind \co __fish_pipe_to_fzf # <Ctrl-o>
    bind \ea history-pager # <Alt-a>
    bind \en __fish_pipe_to_devnull # <Alt-n>
    bind \er __fish_pipe_to_ripgrep # <Alt-r>
    source "$HOME/bin/fzf-key-bindings.fish" && fzf_key_bindings #: synced to ~/bin by chezmoi
    fzf_configure_bindings --variables=\ev # change variables binding to <Alt-v>
    bind \cr _atuin_search # bind search to Ctrl-r; this has to to be done _after_ calling fzf_key_bindings

    set fzf_preview_file_cmd bat

    eval $(keychain --eval ~/.ssh/*_ed25519) # get ssh key credentials from the running instance of ssh-agent

    echo Loaded config.fish # DONE
end
