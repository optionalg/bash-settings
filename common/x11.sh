
  if [ -z "$DISPLAY" ]; then
    if [ `ps -awux|grep  X11.app |grep -vc grep` -gt 0 ]; then
      export DISPLAY=":0.0"
    fi
  fi
