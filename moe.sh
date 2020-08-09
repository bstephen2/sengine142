#!/bin/bash
sengine142	--kings=a5e4 \
				--gbr=4255.44 \
				--pos=h7f5e8h4b6g4b8c7g6g8e5d4c2d2h6h5c4f3 \
				--moves=2 \
				--stip=# \
				--actual \
				--set \
				--fleck \
				--tries \
				--classify > temp.xml
grep "MesonClass" temp.xml > temp1.xml
grep "MesonSolution" temp.xml > temp2.xml
kfilter < temp2.xml > sol.txt
pretty.pl temp1.xml > class.xml
cat class.xml
exit 0
