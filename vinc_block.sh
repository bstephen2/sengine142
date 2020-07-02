#!/bin/bash
valgrind --leak-check=full \
	sengine142	--kings=a2d5 \
					--gbr=1325.00 \
					--pos=g4e6b5h2c8a4b2 \
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
