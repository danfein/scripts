#!/bin/bash

echo "refreshing wifi dhcp"
sudo ipconfig set en0 BOOTP
sudo ifconfig en0 dhcp

echo "refreshing ethernet dhcp"
sudo ipconfig set en10 BOOTP
sudo ifconfig en10 dhcp

echo "complete"
