#!/bin/bash
# 4697
sengine142	--kings=a1d5 \
				--gbr=1513.21 \
				--pos=g3a4d1d8c8f7b5d4c7 \
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
