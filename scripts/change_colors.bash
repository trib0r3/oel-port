#!/bin/bash

COLORS=(BLACK WHITE RED CYAN VIOLET GREEN BLUE YELLOW ORANGE BROWN LIGHTRED GREY1 GREY2 LIGHTGREEN LIGHTBLUE GREY3)

FILE="listing.bas"

for i in `seq 0 15`; do
	C=${COLORS[$i]}
	
	sed -ie "s/poke 53280, ${i}/set_border_color(${C})/g" ${FILE}
	sed -ie "s/poke 53281, ${i}/set_inner_color(${C})/g" ${FILE}
done
