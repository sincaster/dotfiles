#!/usr/bin/env dash

BARDATE(){
	DATE=$(date | awk {'print $5'})
	DAY=$(date  | awk {'print $1'})

	echo -n "♡ $DAY ♡ "
	echo -n "$DATE"
}

BARBATT(){
	BATT=$(acpi | cut -d, -f2)
	echo -n "⚡$BATT "
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
	echo "%{l}%{F#fdf6e3}%{B#002b36} $(BARDATE) $(BARBATT) $(MEM) %{F-}%{B-}"
done
