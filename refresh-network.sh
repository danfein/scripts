#!/bin/bash

sudo su

cd /Library/Preferences/SystemConfiguration/

echo "resetting preferences"
rm com.apple.airport.preferences.plist
rm com.apple.network.identification.plist
rm com.apple.wifi.message-tracer.plist
rm NetworkInterfaces.plist
rm preferences.plist

echo "restarting"
reboot
