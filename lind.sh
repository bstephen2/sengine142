#!/bin/bash
sengine142	--kings=e3e5 \
				--gbr=1852.24 \
				--pos=a6h7d1d8g5a1b1c3f6d5e6c5d7e7b4g4 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--tries \
				--fleck \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
