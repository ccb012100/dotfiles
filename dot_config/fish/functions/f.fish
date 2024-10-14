function f --description "jump to directory with zoxide on 'q' ('Q' to exit without jumping)"
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        __zoxide_z -- "$cwd"
    end
    rm -f -- "$tmp"
end
