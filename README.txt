Xorg-rootless-Devuan
====================

A bunch of scripts (2 in fact) that helps you run Xorg without root rights properly.
This does not use a window manager. Instead, it prompts you each time you log in if you want to use the GUI.
The prompt will not appear if Xorg is already running.

For now, it only works properly with Devuan because it uses pidof to detect if Xorg is running.
But you can edit the script to remove that requirement instead.

It also uses udev for input rights.
If you don't use udev, you might want to use chown on /dev/input* instead.
