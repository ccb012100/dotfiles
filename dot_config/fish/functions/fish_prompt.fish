function fish_prompt
    printf '%s' $PWD (fish_git_prompt) ' $ '
end