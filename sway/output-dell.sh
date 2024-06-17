#!/bin/sh

swaymsg output eDP-1 disable
swaymsg output DP-1 enable
swaymsg output DP-1 res 3840x2160 scale 2
