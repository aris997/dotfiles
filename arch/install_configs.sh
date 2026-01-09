#! /bin/bash -e
# Definig paths
username=$1
hom=/home/$username
dot=$hom/dotfiles
con=$hom/.config
xrg=/etc/X11/xorg.conf.d
rules=/etc/udev/rules.d
# Create directories
mkdir -p $hom/.config/{i3,i3status,fish,termite,monitorbrightness,rofi}
echo "directories created with success."
# Copy all dotfiles in config
cp $dot/i3/* $con/i3/
cp $dot/i3status/* $con/i3status/
cp $dot/fish/* $con/fish/
cp $dot/termite/* $con/termite/
cp $dot/monitorbrightness/* $con/monitorbrightness/
cp $dot/rofi/* $con/rofi/
echo "dotfiles cp with success."
cp $dot/touchpad/30-touchpad.conf $xrg/
cp $dot/monitorbrightness/backlight.rules $rules/
# add username to video group to access brightness commands
usermod -aG video $1
