# „:Installing on Linux“

„:Translation:“ „:---“

---

„:I am not an expert in installing keyboard layouts, these instructions may not work for all Linux users“.

## „:Follow these instructions“

**1.** „:First, backup some files by running these commands“:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

„:If you get an error, first run this command:“ `su root`, „:then try running the commands again, or replace `cp` with `sudo cp`“.

**2.** „:Open file“ `/usr/share/X11/xkb/symbols/tr` „:and append the following text block at the end of the file“:

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

**3.** „:Open file“ `/usr/share/X11/xkb/rules/evdev.xml` „:and insert the following text block after the variant“ `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** „:Then add“ `Turkish (Colemak)` „:via the settings of your desktop environment“.

## „:Uninstalling“

„:To uninstall restore the old files or undo everything you did“:

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
