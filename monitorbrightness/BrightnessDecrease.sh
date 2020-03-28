#!/bin/env bash
actual_bright=$(cat /sys/class/backlight/intel_backlight/brightness)
echo $((actual_bright - 75)) > /sys/class/backlight/intel_backlight/brightness
actual_bright=$(cat /sys/class/backlight/intel_backlight/brightness)
echo $((actual_bright / 75)) > ~/.config/monitorbrightness/brightness
