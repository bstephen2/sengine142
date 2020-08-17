#!/bin/bash
# 138899
sengine142	--kings=e2c4 \
				--gbr=4888.32 \
				--pos=f3b5c8c2e6h4g8e3d7f4f6e4c6f1b4c3a2g3h2 \
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
