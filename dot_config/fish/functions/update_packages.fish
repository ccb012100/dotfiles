function update_packages --description 'Update various system packages'

    set_color purple
    echo 'Updating {apt,brew,gh,fisher} packages...'
    set_color normal

    sudo apt update
    and sudo apt upgrade --yes
    and sudo -k
    and brew upgrade
    and gh extension upgrade --all
    and fisher update

    if test $status -ne 0
        set_color brred
        echo \t --- package updates failed! ---
        set_color normal
    end

    set_color brgreen
    echo \t--- updated packages! ---
    set_color normal
end
