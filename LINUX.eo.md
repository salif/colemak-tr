# Instalado en Linukso

Traduko: [english](LINUX.md), [türkçe](LINUX.tr.md), [中文](LINUX.zh-CN.md), [español](LINUX.es.md), [العربية](LINUX.ar.md), [português](LINUX.pt.md), [русский](LINUX.ru.md), [bahasa](LINUX.id.md), [български](LINUX.bg.md)

---

Mi ne estas sperta pri instalado de klavaraj aranĝoj, ĉi tiuj instrukcioj eble ne funkcias por ĉiuj uzantoj de Linukso.

## Sekvu ĉi tiujn instrukciojn

**1.** Unue, sekurigu iujn dosierojn rulante ĉi tiujn komandojn:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

Se vi ricevas eraron, unue rulu ĉi tiun komandon: `su root`, tiam provu ruli la komandojn denove, aŭ anstataŭigu `cp` per `sudo cp`.

**2.** Malfermu dosieron `/usr/share/X11/xkb/symbols/tr` kaj aldonu la sekvan tekstoblokon ĉe la fino de la dosiero:

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

**3.** Malfermu dosieron `/usr/share/X11/xkb/rules/evdev.xml` kaj enigu la sekvan tekstoblokon post la varianto `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** Poste aldonu `Turkish (Colemak)` per la agordoj de via labortabla medio.

## Malinstalado

Por malinstali restarigi la malnovajn dosierojn aŭ malfari ĉion, kion vi faris:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## Ĝisdatigo

Malinstalu la malnovan version kaj instalu la novan version.

---

Ĉi tiu paĝo enhavas aŭtomate tradukitan tekston

---

[← Reen](./README.eo.md)
