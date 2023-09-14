# „:Install on Linux“

„:---“

---

„:First, backup some files. Run these commands“:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

„:Open file“ `/usr/share/X11/xkb/symbols/tr` „:and append the following text block at the end of the file“

```
// github.com/salif/colemak-tr
partial alphanumeric_keys
xkb_symbols "colemak_tr" {

  include "us(colemak)"

  name[Group1]= "Turkish (Colemak)";

  key <AD01> {[ odiaeresis,  Odiaeresis,  q,             Q          ]};
  key <AD02> {[ scedilla,    Scedilla,    w,             W          ]};
  key <AD10> {[ gbreve,      Gbreve,      semicolon,     colon      ]};
  key <AD11> {[ udiaeresis,  Udiaeresis,  bracketleft,   braceleft  ]};
  key <AD12> {[ apostrophe,  quotedbl,    bracketright,  braceright ]};
  key <AC09> {[ i,           Iabovedot                              ]};
  key <AC11> {[ idotless,    I                                      ]};
  key <AB02> {[ ccedilla,    Ccedilla,    x,             X          ]};

  include "level3(ralt_switch)"
};
```

„:Open file“ `/usr/share/X11/xkb/rules/evdev.xml` „:and insert the following text block after the“ `Turkish (Alt-Q)` variant.

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

„:Then add“ `Turkish (Colemak)` „:via the settings of your desktop environment“.

## „:Uninstalling“

„:To uninstall undo everything you did or restore the old files“:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## „:Updating“

„:Uninstall the old version and install the new version“.

---

„:This page contains automatically translated text“

---

[„:← Back“](./README„:--“)
