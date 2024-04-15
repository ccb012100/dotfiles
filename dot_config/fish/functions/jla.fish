function jla -d 'use zoxide to cd into directory and then run ls -a'
    __zoxide_z "$argv" && ls -a
end
