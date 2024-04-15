# find-in-file - usage: fif <searchTerm>
# from https://github.com/junegunn/fzf/wiki/examples
function fif -d 'find in file (must have `fzf` and `highlight` packages installed)'
    if [ ! (count $argv) -gt 0 ]
        echo "Need a string to search for!"
        return 1
    end
    rg --files-with-matches --no-messages $argv[1] |
        fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --color 'match:bg:yellow' --ignore-case --color always --heading --context 10 '$argv[1]' || rg --ignore-case --colorf always --heading --context 10 '$argv[1]' {}" --preview-window down
end
