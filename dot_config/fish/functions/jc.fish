function jc -d 'use zoxide to cd into a directory and then open it in vscode'
    __zoxide_z "$argv" && code .
end
