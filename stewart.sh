#!/bin/bash
# 21589
sengine142	--kings=c2c6 \
				--gbr=1458.25 \
				--pos=h6d8b7a8a3g6b5f5c8e2a5c4c7h7a4e3h2 \
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
