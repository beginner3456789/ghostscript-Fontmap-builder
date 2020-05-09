# ghostscript-Fontmap-builder
builds a Fontmap file automatically for Linux ghostscript

+++ edit the gsFontmap.sh script for your installation +++

The first step should be to rename or remove existing Fontmap files from directories to be searched.
Any old Fontmap files will prevent ghostscript from checking all of the available fonts. Maintaining an assortment of Fontmap files in varied directories is difficult when organizing many fonts and the primary reason for this unified Fontmap builder script.
The script will find the ghostscript compatible font files and make a single Fontmap file in /Resource/Font/ of ghostscript.
The directories to be searched at GS_FONTPATH in the script should be edited for individual preferences.
Duplicate FontName files can be a problem because ghostscript actually does all the work according to programmed search ordering and is explained in the ghostscript use documentation.
Because of the unified Fontmap, the GS_FONTPATH shouldn't be defined in .profile or .bashrc to prevent redundant runtime searches because this script finds the fonts first.
The gsFontmap.sh script can be put in a crontab to update this unified Fontmap regularly.
If run as a user then first change the permissions of the Fontmap file to be updated so a user can make changes.
Depending on your fonts you might want to remove/replace the ghostscript /Resource/Init/Fontmap as in my setup.
