# Instalación en Linux

Traducción: [english](LINUX.md), [türkçe](LINUX.tr.md), [中文](LINUX.zh-CN.md), [العربية](LINUX.ar.md), [português](LINUX.pt.md), [русский](LINUX.ru.md), [bahasa](LINUX.id.md), [български](LINUX.bg.md), [esperanto](LINUX.eo.md)

---

No soy un experto en instalar distribuciones de teclado; es posible que estas instrucciones no funcionen para todos los usuarios de Linux.

## Siga estas instrucciones

**1.** Primero, haga una copia de seguridad de algunos archivos ejecutando estos comandos:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

Si recibe un error, primero ejecute este comando: `su root`, luego intente ejecutar los comandos nuevamente o reemplace `cp` con `sudo cp`.

**2.** Abrir documento `/usr/share/X11/xkb/symbols/tr` y agregue el siguiente bloque de texto al final del archivo:

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

**3.** Abrir documento `/usr/share/X11/xkb/rules/evdev.xml` e inserte el siguiente bloque de texto después de la variante `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** Luego añade `Turkish (Colemak)` a través de la configuración de su entorno de escritorio.

## Desinstalando

Para desinstalar, restaurar los archivos antiguos o deshacer todo lo que hiciste:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## Actualización

Desinstale la versión anterior e instale la nueva versión.

---

Esta página contiene texto traducido automáticamente

---

[← Volver](./README.es.md)
