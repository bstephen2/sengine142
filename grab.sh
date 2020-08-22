#!/bin/bash
# 20906
sengine142	--kings=f1d4 \
				--gbr=4414.14 \
				--pos=c8b3c5b2h6c3e1e2b5a4c2f2 \
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
