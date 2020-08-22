#!/bin/bash
# 2808
sengine142	--kings=a6d4 \
				--gbr=4888.53 \
				--pos=h2d1c5e2d7g4c6e7a2g1a3c1a4a7b2b4c2c4c7f6g7h5 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--fleck \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
exit 0
