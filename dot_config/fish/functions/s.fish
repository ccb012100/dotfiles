function s --description 'Find matches in starred albums for search text'
    rg "$argv" $HOME/bin/albums/sorted_albums.tsv | column -t -s \t -c1
end
