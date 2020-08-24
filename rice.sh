#!/bin/bash
# 21016
sengine142	--kings=a8c7 \
				--gbr=1562.02 \
				--pos=a3d6h6h5h2h1a7b7b6c6 \
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
