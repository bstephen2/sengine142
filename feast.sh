#!/bin/bash
# 21989
sengine142	--kings=h7c4 \
				--gbr=4471.22 \
				--pos=d2b3f5f4c5a8h4d1e3a2b5a3 \
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
