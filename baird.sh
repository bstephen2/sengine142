#!/bin/bash
# 56951
sengine142	--kings=h2d5 \
				--gbr=1521.34 \
				--pos=g5e6a5d3h8f1d1b5f5e2d7e7c5h3 \
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
