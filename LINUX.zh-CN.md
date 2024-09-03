# 在 Linux 上安装

翻译： [english](LINUX.md), [türkçe](LINUX.tr.md), [español](LINUX.es.md), [العربية](LINUX.ar.md), [português](LINUX.pt.md), [русский](LINUX.ru.md), [bahasa](LINUX.id.md), [български](LINUX.bg.md), [esperanto](LINUX.eo.md)

---

我不是安装键盘布局的专家，这些说明可能不适用于所有 Linux 用户.

## 请遵循这些说明

**1.** 首先，通过运行这些命令备份一些文件:

```bash
cp /usr/share/X11/xkb/symbols/tr /usr/share/X11/xkb/symbols/tr.old
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.old
```

如果出现错误，请首先运行以下命令： `su root`, 然后尝试再次运行命令，或将“cp”替换为“sudo cp”.

**2.** 打开文件 `/usr/share/X11/xkb/symbols/tr` 并将以下文本块附加到文件末尾:

```
// homepage: salif.github.io/colemak-tr
// version: 1
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

**3.** 打开文件 `/usr/share/X11/xkb/rules/evdev.xml` 并在变体后面插入以下文本块 `Turkish (Alt-Q)`:

```xml
<variant>
  <configItem>
    <name>colemak_tr</name>
    <description>Turkish (Colemak)</description>
  </configItem>
</variant>
```

**4.** 然后加 `Turkish (Colemak)` 通过桌面环境的设置.

## 正在卸载

要卸载，请恢复旧文件或撤消您所做的一切:

```bash
mv /usr/share/X11/xkb/symbols/tr.old /usr/share/X11/xkb/symbols/tr
mv /usr/share/X11/xkb/rules/evdev.xml.old /usr/share/X11/xkb/rules/evdev.xml
```

## 正在更新

卸载旧版本并安装新版本.

当拥有该目录的软件包更新时，您对“/usr/share/X11/xkb”目录中的文件所做的更改将会丢失，例如在 Arch Linux 上，该软件包称为“xkeyboard-config”。您必须在每次更新此软件包时进行相同的更改，或者关闭此软件包的更新。您还可以选择制作包含这些更改的自定义包并替换原始包.

---

[← 返回](./README.zh-CN.md)
