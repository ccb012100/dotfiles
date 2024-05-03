# Miscellaneous

## DOIO Megalodon Triple Knob Macro Pad

My [VIA](https://www.caniusevia.com/) config is in [kb16_01.layout.json](/miscellaneous/kb16_01.layout.json)

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

## Rectangle

[**Rectangle**](https://rectangleapp.com/) window manager.

To import the settings:

1. Open **Rectangle**'s settings.
2. Click the ⚙ icon in the top bar.
3. Click _Import_ on the bottom.

## Stats

[**Stats**](https://github.com/exelban/stats) - menu bar system monitor

To import the settings:

1. Right click on the **Stats** icon(s) in the menu bar.
2. Right click on the ⚙ icon in the upper-right corner to open the settings.
3. On the navigation strip on the left, choose _⚙ Settings_ (the the last option).
4. Click _Export settings_

## iTerm2

[iTerm2](https://iterm2.com/) terminal emulator

To sync with [the file in this repo](/miscellaneous/com.googlecode.iterm2.plist), in **iTerm2**:

- Open **Settings ➤ General ➤ Preferences**
- Check _Load preferences from a custom folder or URL_
- Click _Browse_
- Select [miscellaneous/com.googlecode.iterm2.plist](/miscellaneous/com.googlecode.iterm2.plist) in this repo
