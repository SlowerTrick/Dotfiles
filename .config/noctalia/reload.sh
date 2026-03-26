#!/bin/bash

killall -9 qs
mpvpaper ALL ~/Videos/walls/SG.mp4 -o "no-audio" &
sleep 0.1
qs -c noctalia-shell &
