#!/bin/bash
sudo cp /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.tmp;
sudo mv /usr/share/X11/xkb/symbols/pc.toggle /usr/share/X11/xkb/symbols/pc;
sudo mv /usr/share/X11/xkb/symbols/pc.tmp /usr/share/X11/xkb/symbols/pc.toggle;
setxkbmap -layout us;
grep LSGT /usr/share/X11/xkb/symbols/pc
