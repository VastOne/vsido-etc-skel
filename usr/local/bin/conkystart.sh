#!/bin/bash

# ...other autostart things...


#!/bin/bash
sleep 4
killall conky
runs=0
while (( $runs != 1 )); do
conky&
sleep 5;
#checking if conky runs after 5 seconds, if not retry
if pidof conky; then runs=1; else echo "It doesn't run"; fi
done
exit 0