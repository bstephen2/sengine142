#!/bin/bash
# 41964
sengine142	--kings=d1e4 \
				--gbr=1088.32 \
				--pos=c6a7b1a5a4d5e2c7b6f4c2g2b4b2 \
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
