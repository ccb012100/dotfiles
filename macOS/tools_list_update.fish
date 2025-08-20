#!/usr/bin/env fish
set script_dir (dirname (status --current-filename))

$script_dir/brewfile_update.fish
and $script_dir/mas_update.fish
and $script_dir/dotnet-tools_update.fish
