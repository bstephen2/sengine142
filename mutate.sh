#!/bin/bash
sengine142	--kings=h1f4 \
				--gbr=0218.41 \
				--pos=h5g2e7c5g1b5g5d4e4g4d2f6 \
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
