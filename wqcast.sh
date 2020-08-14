#!/bin/bash
# 206938
sengine142	--kings=e1c2 \
				--gbr=0112.12 \
				--pos=a1d5g3c5f2c3b3 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--tries \
				--fleck \
				--castling=Q \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
