#!/bin/bash
# 20891
sengine142	--kings=c6f4 \
				--gbr=1288.26 \
				--pos=b6f8a5d8d1b8b1f6e4h4g2d7g5e6g6b4d3g3d2 \
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
