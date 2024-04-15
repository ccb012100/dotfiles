function jll -d 'use zoxide to cd into directory and then run ls -l'
    __zoxide_z "$argv" && ls -l
end
