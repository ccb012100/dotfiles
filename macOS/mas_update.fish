#!/usr/bin/env fish
set script_dir (dirname (status --current-filename))
set mas_file $script_dir/Masfile

rm $mas_file
mas list > $mas_file