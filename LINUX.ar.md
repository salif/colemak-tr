# التثبيت على لينكس

ترجمة: [english](LINUX.md), [türkçe](LINUX.tr.md), [中文](LINUX.zh-CN.md), [español](LINUX.es.md), [português](LINUX.pt.md), [русский](LINUX.ru.md), [bahasa](LINUX.id.md), [български](LINUX.bg.md), [esperanto](LINUX.eo.md)

---

أولاً، قم بعمل نسخة احتياطية لبعض الملفات. قم بتشغيل هذه الأوامر:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

افتح الملف `/usr/share/X11/xkb/symbols/tr` وقم بإلحاق الكتلة النصية التالية في نهاية الملف

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

افتح الملف `/usr/share/X11/xkb/rules/evdev.xml` وأدخل الكتلة النصية التالية بعد المتغير `Turkish (Alt-Q)`.

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

ثم أضف `Turkish (Colemak)` من خلال إعدادات بيئة سطح المكتب لديك.

## إلغاء التثبيت

لإلغاء التثبيت، قم بالتراجع عن كل ما قمت به أو استعادة الملفات القديمة:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## تحديث

قم بإلغاء تثبيت الإصدار القديم وتثبيت الإصدار الجديد.

---

تحتوي هذه الصفحة على نص مترجم تلقائيًا

---

[← العودة](./README.ar.md)
