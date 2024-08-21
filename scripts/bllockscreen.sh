#!/bin/bash
# Script for monitoring lock/unlock screen of Gnome session
# Could utilize this? /bin/bash -c "gdbus monitor -y -d org.freedesktop.login1 | grep LockedHint" 
dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" |
  while read x; do
    case "$x" in 
      *"boolean true"*) curl -s http://localhost:8000/light/0/on?color=yellow > /dev/null;;
      *"boolean false"*) curl -s http://localhost:8000/light/0/on?color=green > /dev/null;;  
    esac
  done
