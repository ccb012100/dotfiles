function playlist_sync --description 'Sync Spotify playlists to local DB/spreadsheets'
    if not isatty stdin; or not isatty stdout
        echo Not a tty. Exiting.
        return 1
    end

    set pldb $HOME/playlister.sqlite3
    set playlister_script $HOME/bin/playlister.sh
    set_color purple
    echo Syncing $pldb ...\n
    set_color normal

    $playlister_script sync db

    if test $status -eq 0
        set_color purple
        echo Updated $pldb.\n
        set_color normal
    else
        set_color brred
        echo \t --- Playlist DB sync failed! ---\n
        set_color normal
        return 1
    end

    while read --nchars 1 -l response --prompt-str="❔ Sync ccb012100/spotify-playlists album tsv files? (y/n) "
        switch $response
            case y Y
                set_color purple
                echo \nSyncing tsv files...
                set_color normal

                $playlister_script sync tsv

                if test $status -ne 0
                    set_color brred
                    echo \n\t --- Playlist TSV sync failed! ---\n
                    set_color normal

                    return 1
                end

                # set_color purple
                # echo \nSynced tsv files.\n
                # set_color normal

                break
            case n N
                set_color purple
                echo \nNot syncing album tsv files.\n
                set_color normal

                break
            case '*'
                set_color bryellow
                echo Invalid choice: $response
                set_color normal

                continue
        end
    end

    # set_color brgreen
    # echo \n\t--- Completed successfully! ---
    # set_color normal
end
