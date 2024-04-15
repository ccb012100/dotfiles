function update_aliases --description 'Update $HOME/.config/fish/aliases.fish and then source the file'

    if not isatty stdin; or not isatty stdout
        set_color brred
        echo Not a tty. Exiting.
        set_color normal
        return 1
    end

    set aliasfile $HOME/.config/fish/aliases.fish

    set_color purple
    echo updating $aliasfile...
    set_color normal

    nvim $aliasfile

    if test $status -eq 0
        set_color green
        echo $aliasfile updated.
        set_color normal
    else
        set_color brred
        echo \t--- Error: update of $aliasfile failed ---
        set_color normal
        return 1
    end

    while read --nchars 1 -l response --prompt-str="Reload $aliasfile? (y/n)"
        switch $response
            case y Y
                set_color purple
                echo Reloading $aliasfile ...
                set_color normal

                . $aliasfile

                if test $status -ne 0
                    set_color brred
                    echo \t--- Failed to update $aliasfile
                    set_color normal

                    return 1
                end

                set_color green
                echo $aliasfile reloaded
                set_color normal

                break
            case n N
                set_color purple
                echo Not reloading $aliasfile.
                set_color normal

                break
            case '*'
                set_color bryellow
                echo Invalid choice: $response
                set_color normal

                continue
        end
    end

    set_color brgreen
    echo \t--- Completed successfully! ---
    set_color normal
end
