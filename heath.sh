#!/bin/bash
	sengine142	--kings=f7d5 \
					--gbr=1053.31 \
					--pos=b7a7c8a3c1c3e5f3c6 \
					--moves=3 \
					--stip=# \
					--actual \
					--set \
					--tries \
					--threats=SHORTEST | kfilter
echo "Return Code = $?"
exit 0
