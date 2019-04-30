
Debian
====================
This directory contains files used to package v8coind/v8coin-qt
for Debian-based Linux systems. If you compile v8coind/v8coin-qt yourself, there are some useful files here.

## v8coin: URI support ##


v8coin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install v8coin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your v8coin-qt binary to `/usr/bin`
and the `../../share/pixmaps/v8coin128.png` to `/usr/share/pixmaps`

v8coin-qt.protocol (KDE)

