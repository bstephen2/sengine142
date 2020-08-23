#!/bin/bash
# 46459
sengine142	--kings=a1a3 \
				--gbr=1848.00 \
				--pos=h6g7h4g5h5c2g4c6d3f7g6 \
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
