#!/bin/bash
# 2188
sengine142	--kings=g5e5 \
				--gbr=0120.23 \
				--pos=d3c5g2f3e2e6d4f4 \
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
