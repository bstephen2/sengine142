#!/bin/bash
# 19109
sengine142	--kings=g3e5 \
				--gbr=0858.34 \
				--pos=f4e1h6e3c7a2e8b8h4g8d7d6c3f3b7g6h5e4 \
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
