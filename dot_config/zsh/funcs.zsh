#!/usr/bin/env zsh
# custom Zsh functions

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -al }
function clla { cd "$@" && ls -la }

# cd into the directory the file is located in
function cdf { cd `dirname $1` }

# open new emacs-frame
function new-frame { emacsclient -e "(new-frame)" }

# set display brightness
function bright { xrandr --output DP-1-2 --brightness $1 }

# dotnet cli commands
function dot() {
    case $1 in
        b )
            shift
            dotnet build "$@"
        ;;
        r )
            shift
            dotnet run "$@"
        ;;
        * )
            dotnet "$@"
        ;;
    esac
}

# cargo cli commands
function cg() {
    case $1 in
        b )
            shift
            cargo build
        ;;
        c )
            shift
            cargo check
        ;;
        r )
            shift
            cargo run
        ;;
        * )
            cargo "$@"
        ;;
    esac
}

# find in personal notes
function fn() {
    case $1 in
        i ) # case-insensitive
            shift
            rg -i "$@" ~notes
        ;;
        f ) # verbatim
            shift
            rg -F "$@" ~notes
        ;;
        * )
            rg "$@" ~notes
        ;;
    esac
}

# set system-wide text size
function textscale() {
	case $1 in
        laptop )
			gsettings set org.gnome.desktop.interface text-scaling-factor .9
        ;;
        desktop )
			gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
        ;;
		get )
			gsettings get org.gnome.desktop.interface text-scaling-factor
		;;
		set )
			gsettings set org.gnome.desktop.interface text-scaling-factor $2
		;;
		* )
			echo 'usage: text-scaling [ laptop | desktop | get | set <SCALING_FACTOR> ]'
		;;
	esac
}
alias laptop='textscale laptop'
alias desktop='textscale desktop'
