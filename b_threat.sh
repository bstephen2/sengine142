#!/bin/bash
sengine142	--kings=h1f1 \
				--gbr=4420.32 \
				--pos=f6e2a1e1a6g1e4d2f2g5g4 \
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
