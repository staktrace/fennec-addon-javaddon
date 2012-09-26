#!/usr/bin/env bash

mkdir classes
javac -source 1.6 -target 1.6 -d classes java-src/com/staktrace/javaddon/Bootstrap.java
$HOME/android/sdk/platform-tools/dx --dex --verbose --output=java-code.jar classes
zip javaddon.xpi install.rdf bootstrap.js java-code.jar
rm -rf classes java-code.jar

adb push javaddon.xpi /mnt/sdcard/
