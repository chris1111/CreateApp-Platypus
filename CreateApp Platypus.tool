#!/bin/bash
# CreateApp Platypus 
# By chris1111 Copyright (c) 2024 chris1111 All rights reserved.
# Credit: sveinbjorn.org https://sveinbjorn.org/files/manpages/platypus.man.html
# Dependencies: platypus
# Declare some VARS
printf '\e[8;45;85t'
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
CLI=/usr/local/share/platypus/ScriptExec
if [ -e "$CLI" ]; then
    echo "$CLI exists"
    echo Enter the name for you App:
    read APP_NAME
    echo Enter the creator name of your App:
    read CREATOR_NAME
    echo Choose interfaceType for you App:
    echo Your choice are: Progress Bar, Text Window, Droplet, Web View, Status Menu:
    read TYPE_NAME
    # Read the SCRIPT_NAME
    read -p "Drag and Drop the bash script for you App: " SCRIPT_NAME 
    # Display SCRIPT_NAME
    echo "You are choose $SCRIPT_NAME "
    # Read the ICONS_NAME
    read -p "Drag and Drop the Icons file for you App. It must be AppIcon.icns: " ICONS_NAME
    # Display ICONS_NAME
    echo "You are choose $ICONS_NAME "
    echo Your App name was: $APP_NAME.app
    echo Your Creator name was: $CREATOR_NAME
    echo Your interfaceType was: $TYPE_NAME
    Sleep 2
    platypus -o "$TYPE_NAME" -i "$ICONS_NAME" "$SCRIPT_NAME" -u "$CREATOR_NAME" -y ./"$APP_NAME"   
else 
    echo "$CLI does not exist"
    echo "Binaries are not installed, you must install them"
    echo "Insert Your Password To Procceed"
    sudo mkdir -p /usr/local/bin
    sudo mkdir -p /usr/local/share/platypus
    sudo mkdir -p /usr/local/share/man/man1
    sudo cp -rp ./Share/share/platypus/* /usr/local/share/platypus/
    sudo cp -rp ./Share/share/man/man1/platypus.1.gz /usr/local/share/man/man1/
    sudo cp -rp ./Share/platypus /usr/local/bin/
    echo Enter the name for you App:
    read APP_NAME
    echo Enter the creator name of your App:
    read CREATOR_NAME
    echo Choose interfaceType for you App:
    echo Your choice are: Progress Bar, Text Window, Droplet, Web View, Status Menu:
    read TYPE_NAME
    # Read the SCRIPT_NAME
    read -p "Drag and Drop the bash script for you App: " SCRIPT_NAME 
    # Display SCRIPT_NAME
    echo "You are choose $SCRIPT_NAME "
    # Read the ICONS_NAME
    read -p "Drag and Drop the Icons file for you App. It must be AppIcon.icns: " ICONS_NAME
    # Display ICONS_NAME
    echo "You are choose $ICONS_NAME "
    echo Your App name was: $APP_NAME.app
    echo Your Creator name was: $CREATOR_NAME
    echo Your interfaceType was: $TYPE_NAME
    Sleep 2
    platypus -o "$TYPE_NAME" -i "$ICONS_NAME" "$SCRIPT_NAME" -u "$CREATOR_NAME" -y ./"$APP_NAME"
fi 
