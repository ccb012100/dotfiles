#!/usr/bin/env fish
set script_dir (dirname (status --current-filename))
set dotnettools_file $script_dir/dotnettoolsfile

rm $dotnettools_file
and dotnet tool list -g >$dotnettools_file
