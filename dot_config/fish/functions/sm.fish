function sm --description 'Find matches in starred albums for search text'
    set pldb $HOME/playlister.sqlite3
    set playlister_script $HOME/bin/playlister.sh

    rg "$argv" $HOME/bin/albums/sorted_albums.tsv | column -t -s \t -c1
end
