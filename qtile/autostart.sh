#!/bin/bash

# Wallpaper

if cmd_exist feh ; then
    __kill feh
    __start feh --bg-fill '/home/$USER/Pictures/wallpaper.jpg'
fi

# Compositor

if cmd_exist picom ; then
        __kill picom
            __start picom
fi

# Notifications

if cmd_exist dunst ; then
        __kill dunst
            __start dunst
fi
