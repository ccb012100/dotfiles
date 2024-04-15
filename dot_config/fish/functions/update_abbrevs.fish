function update_abbrevs --description 'Update $HOME/.config/fish/abbreviations.fish and then source the file'
    if not isatty stdin; or not isatty stdout
        set_color brred
        echo Not a tty. Exiting.
        set_color normal
        return 1
    end

    set abbrfile $HOME/.config/fish/abbreviations.fish

    set_color purple
    echo updating $abbrfile...
    set_color normal

    nvim $abbrfile

    if test $status -eq 0
        set_color green
        echo $abbrfile updated.
        set_color normal
    else
        set_color brred
        echo \t--- Error: update of $abbrfile failed ---
        set_color normal
        return 1
    end

    while read --nchars 1 -l response --prompt-str="Reload $abbrfile? (y/n)"
        switch $response
            case y Y
                set_color purple
                echo Reloading abbrevs ...
                set_color normal

                . $abbrfile

                if test $status -ne 0
                    set_color brred
                    echo \t--- Failed to update $abbrfile
                    set_color normal
                    return 1
                end

                set_color green
                echo $abbrfile reloaded.
                set_color normal

                break
            case n N
                set_color purple
                echo Not reloading $abbrfile.
                set_color normal

                break
            case '*'
                set_color red
                echo Invalid choice: $response
                set_color normal

                continue
        end
    end

    set_color brgreen
    echo \t--- Completed successfully! ---
    set_color normal
end
