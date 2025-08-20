#!/usr/bin/env fish
set script_dir (dirname (status --current-filename))
set brew_file $script_dir/Brewfile

rm $brew_file
and brew bundle dump --file $brew_file
