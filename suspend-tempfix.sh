#!/bin/bash

### Notes ###############################################################################
#											#
# This script will verify necessary packages are installed for the 			#
# Arch Linux Distribution on the ASUS ROG X13 Model#GV301 and install them if not.	#
# It will also run the modify-dsdt.sh which will recreate the dsdt tables.		#
#											#
#########################################################################################

echo "Verifying necessary packages."
$missing_packages=(mapfile -t StringArray <<< pacman -Q cpio bc acpica pcre)
for $package in $missing_packages
do
	echo "$package"
#	sudo pacman -S $package
done
#sudo pacman -S cpio bc acpica pcre --noconfirm

echo "Modifying grub file"
#echo "GRUB_EARLY_INITRD_LINUX_CUSTOM=\"acpi_override\"" >> /etc/default/grub


