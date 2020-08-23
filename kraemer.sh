#!/bin/bash
# 21862
sengine142	--kings=c2c5 \
				--gbr=4185.23 \
				--pos=g5d5b3e7f7a8g1d6e2f6b5e4b6a5h2 \
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
