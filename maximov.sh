#!/bin/bash
# 41896
sengine142	--kings=c3e5 \
				--gbr=1176.24 \
				--pos=f2f6c8e7a6h5a1c4h4f7g6c5e4 \
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
