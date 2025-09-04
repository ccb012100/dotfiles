#!/usr/bin/env bash
# script for setting up a new MacBook
set -Eeou pipefail

mkdir -v "$HOME"/bin

#
# macOS defaults
#

defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder # show hidden files by default
defaults write com.apple.dock orientation -string left && killall Dock  # set Dock to left
defaults write com.apple.dock persistent-apps -array    # remove default apps from Dock
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false # disable "natural" scrolling
defaults write NSGlobalDomain com.apple.keyboard.fnState -int 1 # Use Function keys as standard Function keys

sudo defaults write /Library/Preferences/com.apple.airport.bt.plist bluetoothCoexMgmt Hybrid # fix issues with bluetooth 2.4 GHz devices

#
# Homebrew
#

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || (
    echo 'Error: homebrew installation failed!'
    exit
)

brew update
brew bundle # uses Brewfile

#
# Homebrew post-installation
#
echo 'Starting homebrew post-installation'

ln -vs /opt/homebrew/bin/bash /usr/local/bin/ # use current version of bash over macOS's old version
ln -vs /opt/homebrew/bin/gcc-14 "$HOME"/bin/gcc  # macOS links 'gcc' to 'clang', so we override that with a new link

brew services start borders

osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/MiddleClick.app", hidden:true}'

skhd --install-service && skhd --start-service

pipx ensurepath
# sudo pipx ensurepath --global # optional to allow pipx actions with --global argument

# dotnet tools
dotnet tool install --global csharprepl
dotnet tool install --global dotnet-script

echo 'Finished homebrew post-installation!'

# install Rust (I don't want to download via Homebrew because `rustup` handles updates itself)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh || (echo 'Error: Rust installation failed!' && exit)

#
# Import settings with "defaults import"
#
defaults import com.lwouis.alt-tab-macos "$HOME"/.local/share/chezmoi/macOS/alt-tab-macos.plist
defaults import com.contextsformac.Contexts.plist "$HOME"/.local/share/chezmoi/macOS/Contexts.plist
defaults import com.jordanbair.Ice "$HOME"/.local/share/chezmoi/macOS/com.jordanbair.Ice.plist

# copy over custom Keyboard Layout
cp -v "$HOME"/.local/share/chezmoi/private_Library/private_Keyboard%20Layouts/us_no_option.keylayout "$HOME"/Library/Keyboard\ Layouts/

echo 'Installation script completed successfully!'
