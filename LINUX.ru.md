# Установка в Linux

Перевод: [english](LINUX.md), [türkçe](LINUX.tr.md), [中文](LINUX.zh-CN.md), [español](LINUX.es.md), [العربية](LINUX.ar.md), [português](LINUX.pt.md), [bahasa](LINUX.id.md), [български](LINUX.bg.md), [esperanto](LINUX.eo.md)

---

Я не эксперт в установке раскладок клавиатуры, эти инструкции могут подойти не всем пользователям Linux.

## Следуйте этим инструкциям

**1.** Сначала создайте резервную копию некоторых файлов, выполнив эти команды:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

Если вы получили сообщение об ошибке, сначала запустите эту команду: `su root`, затем попробуйте выполнить команды еще раз или замените `cp` на `sudo cp`.

**2.** Открыть файл `/usr/share/X11/xkb/symbols/tr` и добавьте следующий текстовый блок в конец файла:

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

**3.** Открыть файл `/usr/share/X11/xkb/rules/evdev.xml` и вставьте следующий текстовый блок после варианта `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** Затем добавьте `Turkish (Colemak)` через настройки среды рабочего стола.

## Удаление

Чтобы удалить, восстановите старые файлы или отмените все, что вы сделали:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## Обновление

Удалите старую версию и установите новую версию.

---

Эта страница содержит автоматически переведенный текст

---

[← Назад](./README.ru.md)
