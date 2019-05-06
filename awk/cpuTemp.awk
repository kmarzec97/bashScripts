#!/bin/awk -f 

/Tdie/ { print substr($2,2,6) }
