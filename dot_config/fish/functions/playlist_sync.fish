function playlist_sync --description 'Sync Spotify playlists to local DB/spreadsheets'
    if not isatty stdin; or not isatty stdout
        echo Not a tty. Exiting.
        return 1
    end

    set pldb $HOME/playlister.db

    set_color purple
    echo Syncing $pldb ...
    set_color normal

    $HOME/bin/playlist-search.sh sync db

    if test $status -eq 0
        set_color purple
        echo Updated $pldb.
        set_color normal
    else
        set_color brred
        echo \t --- Playlist DB sync failed! ---
        set_color normal
        return 1
    end

    while read --nchars 1 -l response --prompt-str="Sync playlist-search album tsv files? (y/n)"
        switch $response
            case y Y
                set_color purple
                echo Syncing tsv files...
                set_color normal

                $HOME/bin/playlist-search.sh sync tsv

                if test $status -ne 0
                    set_color brred
                    echo \t --- Playlist TSV sync failed! ---
                    set_color normal

                    return 1
                end

                set_color purple
                echo Synced tsv files.
                set_color normal

                break
            case n N
                set_color purple
                echo Not syncing album tsv files.
                set_color normal

                break
            case '*'
                set_color bryellow
                echo Invalid choice: $response
                set_color normal

                continue
        end
    end

    cd $HOME/src/playlist-search

    set_color brgreen
    echo \t--- Completed successfully! ---
    set_color normal
end
