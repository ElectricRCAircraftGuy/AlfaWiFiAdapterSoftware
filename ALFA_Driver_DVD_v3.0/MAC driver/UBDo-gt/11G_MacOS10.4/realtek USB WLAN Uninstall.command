#!/bin/sh
. /etc/rc.common

echo "                                                                  "
echo "Please type the password of \"root\" to Uninstall ..."
FROM=`dirname "$0"`

echo "Uninstalling Script and Utility ..."
sudo killall -c Realtek\ WLAN\ Client\ Utility
sudo rm -rf /Library/StartupItems/RT8187ClientUtility
echo "Uninstalling UI..."
sudo rm -rf /Applications/Realtek\ USB\ WLAN\ Client\ Utility.app

echo "Removing Driver..."
sudo rm -r /System/Library/Extensions/rtl8187.kext

echo "Removing Pkg"
sudo rm -r /Library/Receipts/rtl8187.pkg
sudo rm -r /Library/Receipts/UI.pkg
sudo rm -r /Library/Receipts/StartUpItem.pkg

echo "Remove profiles"
cd ~
pwd| rm -rf Library/Preferences/RtProfilesList.plist
pwd| rm -rf Library/Preferences/RtProfilesListV2.plist
pwd| rm -rf Library/Preferences/Realtek\ WLAN\ Client\ Utility.plist

echo "Uninstall Complete."
