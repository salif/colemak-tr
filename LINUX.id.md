# Menginstal di Linux

Terjemahan: [english](LINUX.md), [türkçe](LINUX.tr.md), [中文](LINUX.zh-CN.md), [español](LINUX.es.md), [العربية](LINUX.ar.md), [português](LINUX.pt.md), [русский](LINUX.ru.md), [български](LINUX.bg.md), [esperanto](LINUX.eo.md)

---

Saya bukan ahli dalam memasang tata letak keyboard, petunjuk ini mungkin tidak berfungsi untuk semua pengguna Linux.

## Ikuti petunjuk ini

**1.** Pertama, buat cadangan beberapa file dengan menjalankan perintah ini:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

Jika Anda mendapatkan kesalahan, jalankan perintah ini terlebih dahulu: `su root`, lalu coba jalankan kembali perintahnya, atau ganti `cp` dengan `sudo cp`.

**2.** Membuka file `/usr/share/X11/xkb/symbols/tr` dan tambahkan blok teks berikut di akhir file:

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

**3.** Membuka file `/usr/share/X11/xkb/rules/evdev.xml` dan masukkan blok teks berikut setelah varian `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** Lalu tambahkan `Turkish (Colemak)` melalui pengaturan lingkungan desktop Anda.

## Menghapus instalasi

Untuk menghapus instalan, pulihkan file lama atau batalkan semua yang Anda lakukan:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## Memperbarui

Copot pemasangan versi lama dan pasang versi baru.

---

Halaman ini berisi teks yang diterjemahkan secara otomatis

---

[← Kembali](./README.id.md)
