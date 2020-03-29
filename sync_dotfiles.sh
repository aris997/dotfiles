#! /bin/bash -e
cp ~/.config/fish/config.fish ~/dotfiles/fish/config.fish
echo 'fish'
cp ~/.config/i3/config ~/dotfiles/i3/config
echo 'i3'
cp ~/.config/i3status/config ~/dotfiles/i3status/config
echo 'i3status'
cp ~/.config/monitorbrightness/BrightnessIncrease.sh ~/dotfiles/monitorbrightness/BrightnessIncrease.sh
echo 'BrightnessIncrease'
cp ~/.config/monitorbrightness/BrightnessDecrease.sh ~/dotfiles/monitorbrightness/BrightnessDecrease.sh
echo 'BrightnessDecrease'
cp ~/.config/monitorbrightness/startup.sh ~/dotfiles/monitorbrightness/startup.sh
echo 'startup brightness'
cp ~/.config/rofi/config.rasi ~/dotfiles/rofi/config.rasi
echo 'rofi'
cp ~/.config/termite/config ~/dotfiles/termite/config
echo 'termite'
cp /etc/X11/xorg.conf.d/30-touchpad.conf ~/dotfiles/touchpad/30-touchpad.conf
echo 'touchpad X11'
cp ~/.vimrc ~/dotfiles/.vimrc
echo 'vimrc'
cp ~/.xinitrc ~/dotfiles/.xinitrc
echo 'xinitrc'
cp ~/.bashrc ~/dotfiles/.bashrc
echo 'bashrc'
cp /etc/udev/rules.d/backlight.rules ~/dotfiles/touchpad/backlight.rules
echo 'backlight.rules'
echo 'synced all of dotfiles done.'
cd ~/dotfiles/
git add *.*
currentdate=$(date)
git commit -m "$currentdate"
git push

