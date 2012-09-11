#!/usr/bin/env bash

mkdir classes
javac -source 1.6 -target 1.6 -d classes src/com/staktrace/hello/Bootstrap.java 
$HOME/android/sdk/platform-tools/dx --dex --verbose --output=classes.dex classes
zip javaddon.xpi install.rdf bootstrap.js classes.dex icon.png
adb push javaddon.xpi /mnt/sdcard/
