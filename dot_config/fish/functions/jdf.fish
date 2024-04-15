# use zoxide to cd into the directory the file is located in
function jdf
    __zoxide_z (dirname $argv[1])
end
