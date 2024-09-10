#!/bin/bash

# Get the current brightness level of the device
current_brightness=$(brightnessctl --device='asus::kbd_backlight' g)

# Check if the brightness is off (0)
if [ "$current_brightness" -eq 0 ]; then
    # Turn the brightness to max (or your desired value for "on")
    sudo brightnessctl --device='asus::kbd_backlight' s 3
    echo "Keyboard backlight turned on (max brightness)."
else
    # Turn off the backlight if the backlight was aready on
    sudo brightnessctl --device='asus::kbd_backlight' s 0
    echo "Keyboard backlight turned off."
fi
