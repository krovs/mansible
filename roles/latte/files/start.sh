#!/bin/bash

# Start latte for the first time and generate the dotfiles
latte-dock &
sleep 5
killall latte-dock

# Replace the config with the name of the file
kwriteconfig5 --file lattedockrc --group UniversalSettings \
--key currentLayout "krovo"

kwriteconfig5 --file lattedockrc --group UniversalSettings \
--key lastNonAssignedLayout "krovo"