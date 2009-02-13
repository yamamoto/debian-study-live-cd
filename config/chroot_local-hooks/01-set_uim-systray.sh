#!/bin/sh
# apt-get update
# apt-get -y install uim-gtk2.0 uim-anthy uim-applet-gnome uim-qt 
/usr/sbin/update-alternatives --set xinput-ja_JP /etc/X11/xinit/xinput.d/uim-systray
