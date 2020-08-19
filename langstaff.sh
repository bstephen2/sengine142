#!/bin/bash
# 78496
sengine142	--kings=f5e8 \
				--gbr=0410.21 \
				--pos=d5h8f6h6h5g5 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--tries \
				--fleck \
				--castling=k \
				--ep=g5 \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
