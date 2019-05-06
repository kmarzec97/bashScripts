#!/bin/awk -f

/temp1/ { print substr($2,2,6) }
