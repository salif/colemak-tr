#!/usr/bin/env sh

TR_PATH=/usr/share/X11/xkb/symbols/tr
EVDEV_PATH=/usr/share/X11/xkb/rules/evdev.xml

mv $TR_PATH.orig $TR_PATH
mv $EVDEV_PATH.orig $EVDEV_PATH
