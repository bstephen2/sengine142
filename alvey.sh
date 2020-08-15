#!/bin/bash
# 41905
sengine142	--kings=f8e4 \
				--gbr=1752.23 \
				--pos=e7c6b5c2f4a2d4h6b4b6g3g7e5f3 \
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
