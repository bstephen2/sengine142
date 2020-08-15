#!/bin/bash
# 5966
sengine142	--kings=b7d4 \
				--gbr=3888.16 \
				--pos=h6c5e1a1b1a7f5c1f1e5c3a2e2f2d7a6f6b4g4g2 \
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
