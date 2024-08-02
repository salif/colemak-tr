# Linux'ta kurulum

Tercüme: [english](LINUX.md), [中文](LINUX.zh-CN.md), [español](LINUX.es.md), [العربية](LINUX.ar.md), [português](LINUX.pt.md), [русский](LINUX.ru.md), [bahasa](LINUX.id.md), [български](LINUX.bg.md), [esperanto](LINUX.eo.md)

---

Klavye düzenlerini kurma konusunda uzman değilim; bu talimatlar tüm Linux kullanıcıları için işe yaramayabilir.

## Bu talimatları izleyin

**1.** Öncelikle bu komutları çalıştırarak bazı dosyaları yedekleyin:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

Bir hata alırsanız, önce şu komutu çalıştırın: `su -l root`, daha sonra komutları tekrar çalıştırmayı deneyin veya 'cp'yi 'sudo cp' ile değiştirin.

**2.** Açık dosya `/usr/share/X11/xkb/symbols/tr` ve aşağıdaki metin bloğunu dosyanın sonuna ekleyin:

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

**3.** Açık dosya `/usr/share/X11/xkb/rules/evdev.xml` ve değişkenden sonra aşağıdaki metin bloğunu ekleyin `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** Sonra Ekle `Turkish (Colemak)` masaüstü ortamınızın ayarları aracılığıyla.

## Kaldırma

Kaldırmak için eski dosyaları geri yükleyin veya yaptığınız her şeyi geri alın:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## Güncelleniyor

Eski sürümü kaldırın ve yeni sürümü yükleyin.

---

Bu sayfa otomatik olarak çevrilmiş metin içermektedir

---

[← Geri](./README.tr.md)
