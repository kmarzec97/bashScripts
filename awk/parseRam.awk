#!/bin/awk -f
/Mem:/ { print $3"/"$2 } 

