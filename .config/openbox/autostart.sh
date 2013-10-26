## Openbox autostart.sh
## ====================
## More information about this can be found at:
## http://openbox.org/wiki/Help:Autostart

# get the .Xresources/.Xdefaults
xrdb -l "$HOME/.Xresources" &

# Change keymap as needed
xmodmap "$HOME/.Xmodmap" &

# Start urxvt daemon
urxvtd -q -o -f &

# go to blamk background
xsetroot -solid "#3D3D3D" &

# wallpaper
nitrogen --restore &

## compton compositor
(sleep 3s && compton --config ~/.comptonobx.conf) &
#(sleep 3s && compton --config ~/.compton.conf) &

## Start xscreensaver
#xscreensaver -no-splash &

## Start Conky after a slight delay
#(sleep 3s && conky -c ~/.conky_ob_rc) &
(sleep 3s && /usr/local/bin/conky-openbox.sh) &

# Start lxpanel after short delay
(sleep 3s && lxpanel) &

# wicd network manager
# (sleep 3s && wicd-gtk --tray) &

## vsido-welcome - post-installation script, will not run in a live session and
## only runs once. Safe to remove.
(sleep 10s && vsido-welcome --firstrun)