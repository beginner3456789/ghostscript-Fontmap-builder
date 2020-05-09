#!/bin/sh

export GS_FONTPATH=/usr/share/ghostscript/fonts:/usr/local/share/fonts

gs -dBATCH -dNODISPLAY -dNOFONTMAP -c '/none findfont loadallfonts' | \
grep Loading | \
sed -e 's/\.\.\./   /' | \
awk '{print "/"$2 " (" $5 ");"}' | \
sort > /usr/share/ghostscript/$(gs --version)/Resource/Font/Fontmap

exit 0
