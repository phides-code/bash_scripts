#!/bin/bash
# Toggling on/off a re-map of the LSGT key (less than / greater than, beside
# Right-Alt) to be a Right-CTRL key on HP Laptop 17-cn0xxx

sudo cp /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.tmp;
sudo mv /usr/share/X11/xkb/symbols/pc.toggle /usr/share/X11/xkb/symbols/pc;
sudo mv /usr/share/X11/xkb/symbols/pc.tmp /usr/share/X11/xkb/symbols/pc.toggle;
setxkbmap -layout us;
grep LSGT /usr/share/X11/xkb/symbols/pc
