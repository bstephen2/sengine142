#!/bin/bash
# 20882
sengine142	--kings=c1d5 \
				--gbr=4558.04 \
				--pos=h5g5a5f4c5c7a4b6b7a3b8h2e6f6b4c2 \
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
