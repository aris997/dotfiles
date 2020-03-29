#! /bin/bash -e
# Please run this script in su
hom=/home/$1
dot=$hom/dotfiles
pkglist=$dot/packages.txt

# New repositories for pacman
cp $dot/pacman.conf /etc/pacman.conf

pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort $pkglist))
