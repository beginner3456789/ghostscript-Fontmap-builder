#!/bin/sh
#
# look for fonts in the ghostscript and fonts paths and make new Fontmap
# change this GS_FONTPATH to search your directories and add to Fontmap
# the optional GS_OPTIONS might be needed and can be changed as desired

#GS_OPTIONS="-dNONATIVEFONTMAP -dNOPLATFONTS" \
GS_FONTPATH="/usr/share/ghostscript/fonts:/usr/local/share/fonts" \
gs -dBATCH -dNODISPLAY -dNOFONTMAP -c '/none findfont loadallfonts' | \
grep Loading | \
sed -e 's/\.\.\./   /' | \
awk '{print "/"$2 " (" $5 ");"}' | \
sort > /usr/share/ghostscript/"$(gs --version)"/Resource/Font/Fontmap

exit 0
