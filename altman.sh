#!/bin/bash
# 18995
sengine142	--kings=a2c3 \
				--gbr=4112.24 \
				--pos=f7g7g6f5b6b3d4h4f6d5h5b4 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--fleck \
				--tries \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
