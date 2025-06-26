#!/bin/bash

################################################
#                                              #
#  This will delete existing network settings  #
#      Last-ditch macos troubleshooting        #
#                                              #
################################################


cd /Library/Preferences/SystemConfiguration/

echo "resetting preferences"
sudo rm com.apple.airport.preferences.plist
sudo rm com.apple.network.identification.plist
sudo rm com.apple.wifi.message-tracer.plist
sudo rm NetworkInterfaces.plist
sudo rm preferences.plist

echo "restarting"
sudo reboot
