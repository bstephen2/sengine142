#!/bin/bash
sengine142	--kings=a4a6 \
				--gbr=1170.02 \
				--pos=e4b7e3a8c5d7d6 \
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
