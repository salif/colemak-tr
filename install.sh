#!/usr/bin/env sh

TR_PATCH_PATH=./linux/tr.patch
TR_PATH=/usr/share/X11/xkb/symbols/tr
EVDEV_PATCH_PATH=./linux/evdev.xml.patch
EVDEV_PATH=/usr/share/X11/xkb/rules/evdev.xml

patch -ub $TR_PATH $TR_PATCH_PATH
patch -ub $EVDEV_PATH $EVDEV_PATCH_PATH
