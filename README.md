# David-Dotfiles
Personal dotfiles of my Arch Linux setup for backup purposes and my own future reference.
This repo also includes the commands to install the specified packages, for Arch based distros.

## .config
This folder contains config files for some Linux applications, including:

### Neofetch
A simple program that displays useful system info.
Installation: pacman -S neofetch

### Neovim
A fork of Vim, a powerfull and extensible text editor, made even better by the lua integration and improved codebase.
Installation: pacman -S neovim

### Qbittorrent
A great free and open source torrent client.
Installation: pacman -S qbittorrent

### Qutebrowser
A keyboard-focused web browser written in python that aims to be simple and lightweight, especially good for Vim enthusiasts.
Installation: pacman -S qutebrowser

### Ranger
A terminal file manager written in Python, featuring vi-style key bidings, tabs and several other features.
Installation: pacman -S ranger

### Sxhkd
A simple and lightweight hotkey daemon for Xorg. Very useful when used alongside with Window managers that aim for simplicity and minimalism, like dwm or bspwm.
Installation: pacman -S sxhkd

### Zathura
A minimalistic and customizable document viewer. It can support different file formats through plugins.
Installation: pacman -S zathura zathura-pdf-poppler

## .dwm
In this folder there is a shellscript to autostart some programs alongside the Dynamic Window Manager.

## .Xresources
Set parameters for some Xorg applications, like terminal colors, cursor theme and etc.

## .xinitrc
Launch applications during the initialization of the X server.



