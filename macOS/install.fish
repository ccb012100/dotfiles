#!/usr/bin/env fish
# script for setting up a new MacBook

mkdir $HOME/bin

#
# macOS defaults
#

# show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -boolean true
and killall Finder

# set dock to left
defaults write com.apple.dock orientation -string left
and killall Dock

# fix issues with bluetooth 2.4 GHz devices
sudo defaults write /Library/Preferences/com.apple.airport.bt.plist bluetoothCoexMgmt Hybrid

#
# Homebrew
#

# install homebrew
/bin/bash -c "$(curl -fsSL <https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh>)"
or (echo 'Error: homebrew installation failed!'; exit)

brew install \
    1password-cli \
    bash \
    bitwarden \
    bitwarden-cli \
    bluesnooze \
    dotnet \
    fastfetch \
    fish \
    fisher \
    fnm \
    font-ibm-plex \
    font-jetbrains-mono \
    font-jetbrains-mono-nerd-font \
    git \
    git-delete-merged-branches \
    glow \
    go \
    iterm2 \
    jordanbaird-ice \
    jq \
    kitty \
    koekeishiya/formulae/skhd \
    lsix \
    meld \
    moreutils \
    neovim \
    notunes \
    onefetch \
    pgcli \
    pinentry \
    pinentry-mac \
    pipx \
    postgresql@16 \
    python \
    rectangle \
    ripgrep \
    skhd \
    sqlite \
    stats \
    starship \
    tldr \
    tree \
    warpd \
    xz \
    zoxide

brew install --cask \
    alt-tab \
    easy-move-plus-resize \
    wezterm

brew install --cask --no-quarantine middleclick

#
# Homebrew post-installation
#
echo 'Starting homebrew post-installation'

# use current version of bash over macOS's old version
ln -s /opt/homebrew/bin/bash /usr/local/bin/

osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/MiddleClick.app", hidden:true}'

skhd --install-service && skhd --start-service

pipx ensurepath
# optional to allow pipx actions with --global argument
# sudo pipx ensurepath --global

# dotnet tools
dotnet tool install --global csharprepl
dotnet tool install --global dotnet-script

echo 'Finished homebrew post-installation!'

#
# Rust
#
# I don't want to download via Homebrew because `rustup` handles updates itself.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
or (echo 'Error: Rust installation failed!'; exit)

echo 'Download manually:'
echo 'https://iterm2.com/downloads/stable/latest\nhttps://contexts.co'
echo 'https://apps.apple.com/us/app/signal-shifter/id6446061552?mt=12'

#
# Import settings with "defaults import"
#
defaults import com.lwouis.alt-tab-macos $HOME/.local/share/chezmoi/macOS/alt-tab-macos.plist

defaults import com.contextsformac.Contexts.plist $HOME/.local/share/chezmoi/macOS/Contexts.plist

defaults import com.jordanbair.Ice $HOME/.local/share/chezmoi/macOS/com.jordanbair.Ice.plist

cp $HOME/.local/share/chezmoi/private_Library/private_Keyboard%20Layouts/us_no_option.keylayout $HOME/Library/Keyboard\ Layouts/

echo 'Manually update: iTerm2, Keyboard Layout, Rectangle, Stats'

echo 'End of installation script!'
