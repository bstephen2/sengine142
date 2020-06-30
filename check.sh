#!/bin/bash
	sengine142	--kings=c7a7 \
					--gbr=0200.11 \
					--pos=h8h6h5a6 \
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
