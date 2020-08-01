#!/bin/bash
	sengine142	--kings=a6a8 \
					--gbr=1413.37 \
					--pos=h3e2g4b1h2a3a7h5a4c3d4d5e6f7g5 \
					--moves=3 \
					--stip=# \
					--actual \
					--threats=SHORTEST | kfilter
echo "Return Code = $?"
exit 0
