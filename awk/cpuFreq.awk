#!/bin/awk -f

/cpu MHz/ { print $4"MHz" }
