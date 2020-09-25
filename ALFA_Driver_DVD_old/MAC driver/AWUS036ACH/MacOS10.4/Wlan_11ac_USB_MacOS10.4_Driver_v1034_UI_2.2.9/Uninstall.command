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
sudo kextunload /System/Library/Extensions/RTL8812AU4.kext
sudo rm -rf /System/Library/Extensions/RTL8812AU4.kext

echo "Removing Pkg"
sudo rm -rf /Library/Receipts/wlan.pkg
sudo rm -rf /Library/Receipts/rtl8812AU4.pkg
sudo rm -rf /Library/Receipts/wireless-acNetworkUtility.pkg

echo "Uninstall Complete."
