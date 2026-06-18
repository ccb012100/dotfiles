function ma --description 'Find matches in all albums for search text'
    rg "$argv" $HOME/bin/albums/all_albums_sorted.tsv | column -t -s \t -c1
end