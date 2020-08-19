#!/bin/bash
# 10581
sengine142	--kings=c5g6 \
				--gbr=4885.61 \
				--pos=h4h6g8f4g7g5d8e8f8h5c6f5h7e7f7e6f6e5g4d5 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--tries \
				--fleck \
				--ep=d5 \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
