#!/bin/bash

# ...other autostart things...

if [ "$(pidof xfce4-panel)" ]; then
    killall xfce4-panel &
fi