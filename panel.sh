#!/bin/bash

getTime()
{
	timeValue="  `date +%H:%M:%S`"
}

getFreeRam()
{
	ramValue="  RAM:`free --si -h | ./awk/parseRam.awk -`"
}

getSystemLoad()
{
	loadValue="  `cat /proc/loadavg | ./awk/load.awk`"
}

getGPUTemp()
{
	gpuValue="  GPU:`sensors 2> /dev/null | ./awk/gpuTemp.awk`"
}

getCPUTemp()
{
	cpuValue="  CPU:`sensors 2> /dev/null | ./awk/cpuTemp.awk`"
}

getCPUInfo()
{
	cpuInfoValue="  `cat /proc/cpuinfo | head -8 | ./awk/cpuFreq.awk`"
}

getUpTime()
{
	uptimeValue="  `uptime -p | ./awk/uptime.awk`"
}

while true
do
	getTime; getFreeRam; getSystemLoad; getGPUTemp; getCPUTemp; getCPUInfo; getUpTime;

	xsetroot -name "$timeValue $ramValue $loadValue $gpuValue $cpuValue $cpuInfoValue $uptimeValue"

	sleep 1
done

