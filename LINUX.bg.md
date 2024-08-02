# Инсталиране в Linux

Превод: [english](LINUX.md), [türkçe](LINUX.tr.md), [中文](LINUX.zh-CN.md), [español](LINUX.es.md), [العربية](LINUX.ar.md), [português](LINUX.pt.md), [русский](LINUX.ru.md), [bahasa](LINUX.id.md), [esperanto](LINUX.eo.md)

---

Не съм експерт в инсталирането на клавиатурни подредби, тези инструкции може да не работят за всички потребители на Linux.

## Следвайте тези инструкции

**1.** Първо архивирайте някои файлове, като изпълните тези команди:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

Ако получите грешка, първо изпълнете тази команда: `su -l root`, след това опитайте да изпълните командите отново или заменете `cp` със `sudo cp`.

**2.** Отворете файла `/usr/share/X11/xkb/symbols/tr` и добавете следния текстов блок в края на файла:

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

**3.** Отворете файла `/usr/share/X11/xkb/rules/evdev.xml` и вмъкнете следния текстов блок след варианта `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** След това добавете `Turkish (Colemak)` чрез настройките на вашата работна среда.

## Деинсталиране

За да деинсталирате, възстановете старите файлове или отменете всичко, което сте направили:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## Актуализиране

Деинсталирайте старата версия и инсталирайте новата версия.

---

Тази страница съдържа автоматично преведен текст

---

[← Назад](./README.bg.md)
