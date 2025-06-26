#!/bin/bash

# en0 - ethernet
# en7 - wifi


### Bring interfaces down ###
sudo ifconfig en0 down
sudo ifconfig en7 down
sudo networksetup -setnetworkserviceenabled Ethernet off

## Flush Routes ##
sudo route -n flush

## Bring interfaces up ##
sudo ifconfig en0 up
sudo ifconfig en7 up
sudo setnetworkserviceenabled Ethernet on
