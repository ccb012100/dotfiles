function s --description 'Find matches in starred albums for search text'
    rg "$argv" $HOME/bin/albums/starred_albums_sorted.tsv | column -t -s \t -c1
end
