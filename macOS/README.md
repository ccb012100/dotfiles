# Manually Updated macOS Settings

> [!NOTE]
>
> All instructions assume this repository has been downloaded to `$HOME/.local/share/chezmoi/`.

## Install script

The `zsh` [script](/macOS/install.zsh) can be used to set up a fresh **Mac**.

## AltTab

[**AltTab**](https://github.com/lwouis/alt-tab-macos) window switcher for **macOS**

To export the settings from your machine into this repository:

```zsh
defaults export com.lwouis.alt-tab-macos - > $HOME/.local/share/chezmoi/macOS/alt-tab-macos.plist
```

To import [the settings from this repository](/macOS/com.lwouis.alt-tab-macos.plist) to your machine:

```zsh
defaults import com.lwouis.alt-tab-macos $HOME/.local/share/chezmoi/macOS/alt-tab-macos.plist
```

## Bartender 5

> [!WARNING]
> Bartender was sold by the original developer to a new owner, so I've moved to [Ice](https://github.com/jordanbaird/Ice), which seems to
> be feature-complete for my requirements

## Brewfile

Running `brew bundle dump` generates the [Brewfile](/macOS/Brewfile) that I can use to re-install everything that I've installed via [Homebrew](https://brew.sh/).

## Contexts 3

[Contexts](https://contexts.co/) window switcher.

To import [the settings from this repository](/macOS/Contexts.plist) to your machine:

Export:

```zsh
# strip out the body text of the <data> tags, which I don't really care about and add > 1M to the file's size
defaults export com.contextsformac.Contexts.plist - > $HOME/.local/share/chezmoi/macOS/Contexts.plist
```

Import:

```zsh
defaults import com.contextsformac.Contexts.plist $HOME/.local/share/chezmoi/macOS/Contexts.plist
```

## DBeaver

[DBeaver](https://github.com/dbeaver/dbeaver) SQL client.

### Export settings

- In the menu bar, select `File ➤ Export` to open the Export wizard.
- Select the entry `DBeaver ➤ Preferences`, then click the button `Next ›`
- Set the _Output file_ file picker to `$HOME/.local/share/chezmoi/macOS/dbeaver.zip`

### Import settings

- In the menu bar, select `File ➤ Import` to start the Import wizard
- Select the entry `DBeaver ➤ Preferences`, then click the button `Next ›`
- Set the _Preferences Archive_ file picker to [`$HOME/.local/share/chezmoi/macOS/dbeaver.zip`](/macOS/dbeaver.zip)

## Ice

macOS [menu bar manager](https://github.com/jordanbaird/Ice)

Export the settings from your machine into this repository:

```zsh
defaults export com.jordanbair.Ice - > $HOME/.local/share/chezmoi/macOS/Ice.plist
```

Import [the settings from this repository](/macOS/com.jordanbair.Ice.plist) to your machine:

```zsh
defaults import com.jordanbair.Ice $HOME/.local/share/chezmoi/macOS/Ice.plist
```

## iTerm2

[iTerm2](https://iterm2.com/) terminal emulator

To sync with [the file in this repo](/macOS/com.googlecode.iterm2.plist), in **iTerm2**:

- Open **Settings ➤ General ➤ Preferences**
- Check _Load preferences from a custom folder or URL_
- Click _Browse_
- Select [com.googlecode.iterm2.plist](/macOS/com.googlecode.iterm2.plist).

## Keyboard Layout

The default Keyboard Layout for **macOS** uses the `Alt`/`Option`/`⌥` key to insert special characters. This prevents some applications (**Visual Studio Code**, **JetBrains Rider**) from using ⌥ chords.

Since I don't have any need to insert special characters, I use a custom Keyboard Layout to use the `⌥` keys as just normal `Alt` keys.

To use the custom Keyboard Layout:

1. Copy the [keyboard layout file](/private_Library/private_Keyboard%20Layouts/us_no_option.keylayout) to the `Keyboard Layouts` folder

    ```zsh
    cp $HOME/.local/share/chezmoi/private_Library/private_Keyboard%20Layouts/us_no_option.keylayout $HOME/Library/Keyboard\ Layouts/
    ```

1. Go to `System Settings > Keyboard > Text Input > Input Sources > Edit`.
    1. Click `＋` in the bottom left.
    1. Scroll the list on the left to the very end and select `Others`.
    1. Select `US no ⌥` and click `Add`.
1. In the menu bar, click the Input menu and select **QWERTY no option**

source: <https://github.com/microsoft/vscode/issues/41024#issuecomment-1615127984>

## Loop

[Loop](https://github.com/MrKai77/Loop) window manager.

Tried it out - settings are in [Loop-keybinds.json](/macOS/Loop-keybinds.json).

Not currently using it, but may in the future.

## Rectangle

[**Rectangle**](https://rectangleapp.com/) window manager.

To import the settings from [the file in this repo](/macOS/Stats.plist):

1. Open **Rectangle**'s settings.
2. Click the ⚙ icon in the top bar.
3. Click _Import_ on the bottom.
4. Select [`Stats.plist`](/macOS/Stats.plist).

## Stats

[**Stats**](https://github.com/exelban/stats) menu bar system monitor

To export the settings:

1. Right click on the **Stats** icon(s) in the menu bar.
1. Right click on the ⚙ icon in the upper-right corner to open the settings.
1. On the navigation strip on the left, choose _⚙ Settings_ (the the last option).
1. Click _Export settings_

## Tuneful

[**Tuneful**](https://github.com/martinfekete10/Tuneful) music player menu bar app.

To export the settings, run the command:

```zsh
defaults export com.Martin-Fekete.Tuneful.plist - > $HOME/.local/share/chezmoi/macOS/Tuneful.plist
```

Import [the settings from this repository](/macOS/com.jordanbair.Ice.plist) to your machine:

```zsh
defaults import com.Martin-Fekete.Tuneful.plist $HOME/.local/share/chezmoi/macOS/Tuneful.plist
```

## Trailer

[**Trailer**](https://github.com/ptsochantaris/trailer) **GitHub** PR/Issues notification tool

To export the settings:

1. Open the settings
2. Click the button labeled `Export...`
