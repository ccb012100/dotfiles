# DOIO Megalodon Triple Knob Macro Pad

- [Instructions](https://wiki.keebmonkey.com/en/products/mmp) for updating with **VIA**
  - To set an encoder function as transparent, enter the value `KC_TRNS` manually.
  - To set an encoder function to mouse wheel scroll, use the values `KC_MS_WH_UP` and `KC_MS_WH_DOWN`
    - `KC_WH_U` and `KC_WH_D` do ***not*** work
- [Instructions](https://wiki.keebmonkey.com/en/guides/kb16update) for flashing the firmware with **QMK Tool Box**.
- The [default keymap](https://github.com/the-via/keyboards/tree/master/src/doio/kb16) from the **VIA** repo.
- The [firmware code](https://github.com/qmk/qmk_firmware/tree/master/keyboards/doio/kb16) in the QMK repo.
  - Use [**Revision 2**](https://github.com/qmk/qmk_firmware/tree/master/keyboards/doio/kb16/rev2)
- Firmware should be donwloaded from the [**VIA** site](https://www.caniusevia.com/docs/download_firmware).
  - [direct link](https://raw.githubusercontent.com/the-via/firmware/master/doio_kb16_rev2_via.bin) to firmware download

## VIA config

My [VIA](https://www.caniusevia.com/) config is below:

```json
{
  "name": "KB16-01",
  "vendorProductId": 3490715137,
  "macros": ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
  "layers": [
    [
      "KC_P7",
      "KC_P8",
      "KC_P9",
      "KC_PMNS",
      "RGB_TOG",
      "KC_P4",
      "KC_P5",
      "KC_P6",
      "KC_PPLS",
      "TO(1)",
      "KC_P1",
      "KC_P2",
      "KC_P3",
      "KC_ENT",
      "KC_MPLY",
      "KC_P0",
      "KC_P0",
      "KC_PDOT",
      "KC_ENT",
      "KC_NO"
    ],
    [
      "KC_MS_WH_DOWN",
      "KC_MS_UP",
      "KC_MS_WH_UP",
      "TO(0)",
      "KC_TRNS",
      "KC_MS_LEFT",
      "KC_MS_DOWN",
      "KC_MS_RIGHT",
      "KC_MS_BTN4",
      "TO(2)",
      "KC_MS_BTN1",
      "KC_MS_BTN2",
      "KC_MS_BTN3",
      "KC_MS_BTN5",
      "KC_TRNS",
      "KC_MS_ACCEL0",
      "KC_MS_ACCEL1",
      "KC_MS_ACCEL2",
      "KC_APP",
      "KC_NO"
    ],
    [
      "KC_TAB",
      "KC_HOME",
      "KC_UP",
      "KC_PGUP",
      "KC_TRNS",
      "KC_ESC",
      "KC_LEFT",
      "KC_DOWN",
      "KC_RGHT",
      "TO(3)",
      "KC_LSFT",
      "KC_END",
      "KC_NO",
      "KC_PGDN",
      "KC_TRNS",
      "KC_SPC",
      "KC_SPC",
      "KC_SPC",
      "KC_SPC",
      "KC_NO"
    ],
    [
      "RGB_VAD",
      "RGB_VAI",
      "RGB_M_P",
      "RGB_M_SW",
      "KC_TRNS",
      "KC_NO",
      "KC_NO",
      "RGB_M_G",
      "RGB_M_B",
      "TO(0)",
      "KC_NO",
      "KC_NO",
      "RGB_M_SN",
      "RGB_M_R",
      "KC_TRNS",
      "RGB_RMOD",
      "RGB_MOD",
      "RGB_M_X",
      "RGB_M_K",
      "KC_NO"
    ]
  ],
  "encoders": [
    [
      ["KC_PGUP", "KC_PGDN"],
      ["KC_TRNS", "KC_TRNS"],
      ["KC_TRNS", "KC_TRNS"],
      ["RGB_HUD", "RGB_HUI"]
    ],
    [
      ["KC_MS_WH_UP", "KC_MS_WH_DOWN"],
      ["KC_TRNS", "KC_TRNS"],
      ["KC_TRNS", "KC_TRNS"],
      ["RGB_SAD", "RGB_SAI"]
    ],
    [
      ["KC_VOLD", "KC_VOLU"],
      ["KC_TRNS", "KC_TRNS"],
      ["KC_TRNS", "KC_TRNS"],
      ["RGB_SPD", "RGB_SPI"]
    ]
  ]
}
```
