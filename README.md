# Repo Status

NOT READY.


# AlfaWiFiAdapterSoftware

This is the software that comes on the CDs--which are inconvenient, hence why I'm making this repo--with Alfa WiFi adapters. 

I'll also add a few of my personal installation notes for these Alfa drivers on Linux Ubuntu, as I figure out how to do it.

By Gabriel Staples  
www.ElectricRCAircraftGuy.com  

## Disk 1: ALFA_Driver_DVD_old

- This is the driver installation DVD which came with my [Alfa AWUS036NH 2000mW 2.4GHz USB Wi-Fi adapter for $25 from Rokland here](https://store.rokland.com/products/alfa-awus036nh-802-11n-wireless-n-usb-wi-fi-adapter-2-watt). 
- You can also get it [in this bigger kit for $45 here](https://store.rokland.com/products/alfa-awus036nh-2000mw-usb-wi-fi-luxury-pack-w-6-accessories). 
- It appears to be the older of the two disks.
- Its size is 2.8 GB.
- See its [directory structure here](ALFA_Driver_DVD_tree.md), or browse its files above.

<a href="ALFA_Driver_DVD_old" title="Click to browse files">
    <p align="left" width="100%">
        <img width="50%" src="images/ALFA_Driver_DVD_old.jpg"> 
    </p>
</a>

## Disk 2: ALFA_Driver_DVD_v3.0 [recommended]

- This is the driver installation DVD which came with my [Alfa AWUS036AC 802.11ac Long Range AC1200 Dual Band 2.4GHz/5GHz WiFi USB Dongle for $29 from Rokland here](https://store.rokland.com/products/alfa-awus036ac-802-11ac-long-range-dual-band-wifi-usb-adapter).
- It appears to be the newer of the two disks, and it says "v3.0" on the front of it.
- Its size is 3.0 GB.
- See its [directory structure here](ALFA_Driver_DVD_v3.0_tree.md), or browse its files above.

<a href="ALFA_Driver_DVD_old" title="Click to browse files">
    <p align="left" width="100%">
        <img width="50%" src="images/ALFA_Driver_DVD_v3.0.jpg"> 
    </p>
</a>

## Disk copy instructions on Linux

References:
1. [my own answer]: https://askubuntu.com/questions/17275/how-to-show-the-transfer-progress-and-speed-when-copying-files-with-cp/1275972#1275972
1. https://fideloper.com/user-group-permissions-chmod-apache

Here is how I copied the entire contents of the DVDs above on my Linux Ubuntu computer, FROM directory `/media/gabriel/ALFA Driver DVD` TO directory `~/GS/dev/AlfaWiFiAdapterSoftware`:

```bash
# First, do a dry run to make sure the statistics summary at the end all looks good, and that
# "Number of deleted files" (meaning: files it's going to delete from your destination directory)
# is 0.
time rsync -rah --dry-run --info=progress2 --stats '/media/gabriel/ALFA Driver DVD' ~/GS/dev/AlfaWiFiAdapterSoftware

# When ready, remove the `--dry-run` flag above to actually do the copy. In the event there are any
# disk read errors, simply re-run this command repeatedly until you no longer get any errors and it
# all passes. Any read errors will show up live in the `rsync` terminal output while the command
# runs. If you get read errors, you may need to clean the disk and try again. `rsync` is great in
# that it can pick up where it left off, so re-running the command can be fast.
time rsync -rah --info=progress2 --stats '/media/gabriel/ALFA Driver DVD' ~/GS/dev/AlfaWiFiAdapterSoftware

# Once done copying, add (`+`) read/write (`rw`) privileges for your user and group (`ug`) to all
# files you just copied, like this. This allows you to be able to move, modify, rename, etc. them as
# you see fit using your favorite file manager, such as nemo (my favorite):
# https://askubuntu.com/a/1173861/327339, or nautilus (the default that comes with Ubuntu).
cd ~/GS/dev/AlfaWiFiAdapterSoftware
chmod -R ug+rw 'ALFA Driver DVD'
```


# License
ALFA HAS THEIR OWN LICENSES TO COVER THEIR OWN SOFTWARE HEREIN!

Whatever licenses Alfa has on this software is their business. I do not pretend to override their licenses by adding my own licence and license file to this repo. **The license file I've added to this repo is only for the content I add here which is not otherwise bound by any other license by Alfa or anyone else.**


# Driver Installation Instructions on Linux

todo

