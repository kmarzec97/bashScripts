#!/bin/bash

fanSpeed=$1
echo 1 > /sys/class/hwmon/hwmon0/pwm1_enable
echo ${fanSpeed:-40} > /sys/class/hwmon/hwmon0/pwm1


