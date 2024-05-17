# Manually Updated macOS Settings

## AltTab

[**AltTab**](https://github.com/lwouis/alt-tab-macos) window switcher for **macOS**

To export the settings from your machine into this repository:

```zsh
defaults export com.lwouis.alt-tab-macos - > $HOME/.local/share/chezmoi/macOS/alt-tab-macos.plist
```

To import [the settings from this repository](/macOS/alt-tab-macos.plist) to your machine:

```zsh
defaults import com.lwouis.alt-tab-macos $HOME/.local/share/chezmoi/macOS/alt-tab-macos.plist
```

## Bartender 5

[Bartender 5](https://www.macbartender.com/Bartender5/) menu bar item manager.

To import [the settings from this repository](/macOS/com.surteesstudios.Bartender.plist) to your machine:

Export:

```zsh
# strip out the body text of the <data> tags, which I don't really care about and add > 1M to the file's size
defaults export com.surteesstudios.Bartender.plist - | sed '/\h*<.*>\h*/!d' > $HOME/.local/share/chezmoi/macOS/com.surteesstudios.Bartender.plist
```

Import:

```zsh
defaults import com.lwouis.alt-tab-macos $HOME/.local/share/chezmoi/macOS/com.surteesstudios.Bartender.plist
```

## DOIO Megalodon Triple Knob Macro Pad

My [VIA](https://www.caniusevia.com/) config is in [kb16_01.layout.json](/macOS/kb16_01.layout.json)

- [Instructions](https://wiki.keebmonkey.com/en/products/mmp) for updating with **VIA**
  - To set an encoder function as transparent, enter the value `KC_TRNS` manually.
  - To set an encoder function to mouse wheel scroll, use the values `KC_MS_WH_UP` and `KC_MS_WH_DOWN`
    - `KC_WH_U` and `KC_WH_D` do **_not_** work
- [Instructions](https://wiki.keebmonkey.com/en/guides/kb16update) for flashing the firmware with **QMK Tool Box**.
- The [default keymap](https://github.com/the-via/keyboards/tree/master/src/doio/kb16) from the **VIA** repo.
- The [firmware code](https://github.com/qmk/qmk_firmware/tree/master/keyboards/doio/kb16) in the QMK repo.
  - Use [**Revision 2**](https://github.com/qmk/qmk_firmware/tree/master/keyboards/doio/kb16/rev2)
- Firmware should be donwloaded from the [**VIA** site](https://www.caniusevia.com/docs/download_firmware).
  - [direct link](https://raw.githubusercontent.com/the-via/firmware/master/doio_kb16_rev2_via.bin) to firmware download

## iTerm2

[iTerm2](https://iterm2.com/) terminal emulator

To sync with [the file in this repo](/macOS/com.googlecode.iterm2.plist), in **iTerm2**:

- Open **Settings ➤ General ➤ Preferences**
- Check _Load preferences from a custom folder or URL_
- Click _Browse_
- Select [com.googlecode.iterm2.plist](/macOS/com.googlecode.iterm2.plist).

## Keyboard Layout

The default Keyboard Layout for **macOS** uses the `Alt`/`Option`/`⌥` key to insert special characters. This prevents some applications (**Visual Studio Code**, **JetBrains Rider**) from using ⌥ chords.

Since I don't have any need to insert special characters, I use a [custom Keyboard Layout](/macOS/qwerty_no_option.keylayout) to use the `⌥` keys as just normal `Alt` keys.

To use the custom Keyboard Layout:

1. Copy the [keyboard layout file](/macOS/qwerty_no_option.keylayout) to the `Keyboard Layouts` folder

    ```zsh
    cp $HOME/.local/share/chezmoi/macOS/qwerty_no_option.keylayout $HOME/Library/Keyboard\ Layouts/
    ```

1. Go to `System Settings > Keyboard > Text Input > Input Sources > Edit`.
    1. Click `＋` in the bottom left.
    1. Scroll the list on the left to the very end and select `Others`.
    1. Select `QWERTY no option` and click `Add`.
1. In the menu bar, click the Input menu and select **QWERTY no option**

source: <https://github.com/microsoft/vscode/issues/41024#issuecomment-1615127984>

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
