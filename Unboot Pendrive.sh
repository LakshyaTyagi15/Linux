# bash commands

# Firstly identify your USB device, mostly it would be sda, sdb, sdc, sdd or else
lsblk

# Wipe Old Boot Signatures and Partition Table
sudo wipefs -a /dev/sda

# Create a New Partition Table
sudo fdisk /dev/sda

# -- Something similar to this would come on screen --

# Welcome to fdisk (util-linux 2.41.1).
# Changes will remain in memory only, until you decide to write them.
# Be careful before using the write command.

# Device does not contain a recognized partition table.
# Created a new DOS (MBR) disklabel with disk identifier 0xa125009f.

# Command (m for help):

# Then inside the fdisk prompt, press these keys:

# g     ← make new GPT partition table
# n     ← new partition
# Enter ← default number
# Enter ← default first sector
# Enter ← default last sector (use full size)
# y     ← (optional) if it shows to remove signature
# w     ← write changes and exit

# Now, we have to format pendrive to anyone of file system
# We can choose any one file system from following (FAT 32 is preffered).

# 1st File System - FAT32 (Works on most OS, but maximum file size can be 4GB)
sudo mkfs.vfat -F 32 /dev/sda1

# 2nd File System - exFAT (Can store data of more than 4GB but works on modern PC or OS)
sudo mkfs.exfat /dev/sda1

# 3rd File System - NTFS (Works for Windows only)
sudo mkfs.ntfs /dev/sda1

# 4th File System - ext4 (Works for Linux only)
sudo mkfs.ext4 /dev/sda1
