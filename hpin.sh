#!/bin/bash
sengine142	--kings=c1a1 \
				--gbr=0523.21 \
				--pos=a4e1b2h8a2c3b3c2e2 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--fleck \
				--meson \
				--classify | grep "MesonClass" > temp.xml
pretty.pl temp.xml > hpin.xml
cat hpin.xml
exit 0
