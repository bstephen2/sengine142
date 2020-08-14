#!/bin/bash
# 173835
sengine142	--kings=e1f3 \
				--gbr=1112.12 \
				--pos=e7h1h6h5c1g3g5e4 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--tries \
				--fleck \
				--castling=K \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
