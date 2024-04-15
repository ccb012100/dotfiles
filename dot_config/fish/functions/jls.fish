function jls -d 'use zoxide to cd into directory and then run ls'
    __zoxide_z "$argv" && ls
end
