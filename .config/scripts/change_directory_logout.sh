#!/bin/bash

# Define para qual é o desktop
TARGET=1

# O tipo correto é int32
dbus-send --session --dest=org.kde.KWin \
    --type=method_call /KWin \
    org.kde.KWin.setCurrentDesktop int32:$TARGET
