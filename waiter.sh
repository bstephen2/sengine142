#!/bin/bash
# 20879
sengine142	--kings=a1d6 \
				--gbr=3222.40 \
				--pos=g4e7e4a8f8d7g3f7b6g6e2 \
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
