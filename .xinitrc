
# layout switching
setxkbmap -model pc105 -layout us,se -option grp:alt_shift_toggle

# scrolling with thinkpad middle mouse button
xinput set-prop "PS/2 Synaptics TouchPad" "Evdev Wheel Emulation" 1
xinput set-prop "PS/2 Synaptics TouchPad" "Evdev Wheel Emulation Button" 2
xinput set-prop "PS/2 Synaptics TouchPad" "Evdev Wheel Emulation Timeout" 200
xinput set-prop "PS/2 Synaptics TouchPad" "Evdev Wheel Emulation Axes" 6 7 4 5

# track point speed
xinput set-prop "PS/2 Synaptics TouchPad" "Device Accel Constant Deceleration" 0.7

# load configs
xrdb -m ~/.Xresources

# set wallpaper
feh --bg-scale ~/docs/hex.jpg

# default background programs
parcellite &
nm-applet &
python dropbox.py start &
xscreensaver -no-splash &

# start i3
exec ssh-agent i3

