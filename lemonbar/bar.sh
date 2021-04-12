#!/usr/bin/env dash

BARDATE(){
    DATE=$(date | awk {'print $5'})
    DAY=$(date  | awk {'print $1'})

    echo -n "$DAY "
    echo -n "$DATE"
}

BARBATT(){
    BATT=$(acpi | cut -d, -f2)
    # battery died and It doesn't show up anymore
    echo -n "⚡$BATT"
    sleep 1
}

MEM(){ 
    FREEMEM=$(free -h | paste -sd ' ' | awk {'print $9'})
    echo $FREEMEM
}

# colors

# pink  -  #FF86E1
# gray  -  #2B2B2B
# white -  #FFFFFF

while true
do
	echo "%{l}%{F#FFFFFF}%{B#1a1a1a} $(BARDATE) $(BARBATT) $(MEM) %{F-}%{B-}"
done
