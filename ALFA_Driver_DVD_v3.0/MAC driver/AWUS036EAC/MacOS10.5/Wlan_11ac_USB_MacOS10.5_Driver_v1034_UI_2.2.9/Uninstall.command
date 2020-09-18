#!/bin/sh
. /etc/rc.common

echo "                                                                  "
echo "Please type the password of \"root\" to Uninstall ..."
FROM=`dirname "$0"`

echo "Uninstalling Script and Utility ..."
sudo killall -c Wireless-AC\ Network\ Utility
sleep 2
echo "Uninstalling UI..."
sudo rm -rf /Library/LaunchAgents/WlanAC.Software
sudo rm -rf /Applications/Wireless-AC\ Network\ Utility.app

echo "Removing Driver..."
sudo kextunload /System/Library/Extensions/RTL8812AU5.kext
sudo rm -rf /System/Library/Extensions/RTL8812AU5.kext

echo "Removing Pkg"

echo "Uninstall Complete."
