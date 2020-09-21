# Repo Status

NOT READY.

# AlfaWiFiAdapterSoftware
Software that comes on the CDs (which are inconvenient, hence why I'm making this repo) with Alfa WiFi adapters, and my personal installation notes for Linux.

ALFA_AWUS036NH_2000mW_2.4GHz_LR
.....

... add photos of disks

By Gabriel Staples  
www.ElectricRCAircraftGuy.com  

# License
ALFA HAS THEIR OWN LICENSES TO COVER THEIR OWN SOFTWARE HEREIN!

Whatever licenses Alfa has on this software is their business. I do not pretend to override their licenses by adding my own licence and license file to this repo. **The MIT license file I've added to this repo is only for the content I add here which is not otherwise bound by any other license by Alfa or anyone else.**

# Linux installation instructions

todo


Notes:

    rsync -rah --dry-run --info=progress2 --stats '/media/gabriel/ALFA Driver DVD' ~/GS/dev/AlfaWiFiAdapterSoftware
    time rsync -rah --info=progress2 --stats '/media/gabriel/ALFA Driver DVD' ~/GS/dev/AlfaWiFiAdapterSoftware

See my ans: https://askubuntu.com/questions/17275/how-to-show-the-transfer-progress-and-speed-when-copying-files-with-cp/1275972#1275972

    chmod -R ug+rw 'ALFA Driver DVD'

See: https://fideloper.com/user-group-permissions-chmod-apache