#!/bin/sh
. /etc/rc.common

echo "                                                                  "
echo "Please type the password of \"root\" to Uninstall ..."
FROM=`dirname "$0"`

echo "Removing Apple USB Ethernet Driver..."

sudo kextunload /System/Library/Extensions/IONetworkingFamily.kext/Contents/PlugIns/AppleRTL815X*.kext
sudo kextunload /Library/Extensions/AppleRTL815X*.kext

sudo rm -rf /System/Library/Extensions/IONetworkingFamily.kext/Contents/PlugIns/AppleRTL815X*.kext
sudo rm -rf /Library/Extensions/AppleRTL815X*.kext

sudo touch /System/Library/Extensions/
sudo touch /Library/Extensions/

echo "Uninstall Complete."
