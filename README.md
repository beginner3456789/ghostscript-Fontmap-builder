# ghostscript-Fontmap-builder
builds a Fontmap file automatically for Linux ghostscript

+++ edit the gsFontmap.sh script for your installation +++

The first step should be to rename or remove existing Fontmap files from directories to be searched.
Any old Fontmap files will prevent ghostscript from checking all of the fonts.
The script will find the ghostscript font files and make a single Fontmap file in /Resource/Font/
The directories to be searched should be edited for individual preferences.
Duplicate FontName files can be a problem because ghostscript actually does all the work.
The GS_FONTPATH isn't needed because this script finds them all and prevents redundant searches.
The gsFontmap.sh script can be put in a crontab to update this unified Fontmap regularly.
If run as a user then first change the permissions of the Fontmap file so a user can make changes.
Depending on your fonts you might want to remove/replace the /Resource/Init/Fontmap as in my setup.
