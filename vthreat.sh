#!/bin/bash
valgrind --leak-check=full \
	sengine142	--kings=e3e5 \
					--gbr=1852.24 \
					--pos=a6h7d1d8g5a1b1c3f6d5e6c5d7e7b4g4 \
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