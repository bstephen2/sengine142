#!/bin/bash
astyle --style=kr --align-pointer=type --indent=tab=3 --indent=spaces \
			--pad-oper --unpad-paren --break-blocks \
			--pad-header \
			./java/Chess/Move.java ./java/Chess/TwoMover.java
