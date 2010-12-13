

# command to mount the android file image
function mountAndroid  { hdiutil attach ~/Code/android.dmg  -mountpoint /Volumes/android; }

# set the number of open files to be 1024
ulimit -S -n 1024

