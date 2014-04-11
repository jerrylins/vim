#! /bin/sh

while :
do
    adb shell cat sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state
	if [ $? -eq 0 ]
	then
		sleep 1
	fi	

done

