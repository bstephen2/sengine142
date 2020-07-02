#!/bin/bash
valgrind --leak-check=full \
	sengine142	--kings=h1f1 \
					--gbr=4420.32 \
					--pos=f6e2a1e1a6g1e4d2f2g5g4 \
					--moves=2 \
					--stip=# \
					--actual \
					--set \
					--tries \
					--fleck \
					--meson \
					--classify
echo "Return Code = $?"
exit 0
