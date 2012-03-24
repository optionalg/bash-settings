#!/bin/echo "This file is meant to be sourced from the command or .bashrc"


# command to mount the android file image
#function mountAndroid  { hdiutil attach ~/Code/android.dmg  -mountpoint /Volumes/android; }

# set the number of open files to be 1024
#ulimit -S -n 1024

TOOLDIR="/Users/backup/Downloads/2012/android-sdk-macosx/tools"
if [ -d "${TOOLDIR}" ]; then
	PATH="${TOOLDIR}:${PATH}"
fi

PLATTOOLDIR="/Users/backup/Downloads/2012/android-sdk-macosx/platform-tools"
if [ -d "${PLATTOOLDIR}" ]; then
	PATH="${PLATTOOLDIR}:${PATH}"
fi
