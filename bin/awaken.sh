#!/system/bin/sh
############## device ######################
devicekey=/dev/input/event0
devicetouch=/dev/input/event1
############## awaken ######################
awaken()
{
	sleep 3
	sendevent $devicekey 1 116 1
	sendevent $devicekey 0 0 0
	sendevent $devicekey 1 116 0
	sendevent $devicekey 0 0 0
	sendevent $devicekey 0 0 1
	echo "===========sleep============"
	input keyevent 82
	sleep 3
	sendevent $devicekey 1 116 1
	sendevent $devicekey 0 0 0
	sendevent $devicekey 1 116 0
	sendevent $devicekey 0 0 0
	sendevent $devicekey 0 0 1
	echo "==========awaken============"
	input keyevent 82
}
############### main #####################
j=1
jmax=20000000
echo zhongrui > /sys/power/wake_lock
logcat -v time > /data/log.txt &
dmesg > /data/dmesg.txt &
touch /data/count.txt
chmod 777 /data/count.txt
while [ $j -lt $jmax ];
do
	echo "===========$j============"
	echo "$j" > /data/count.txt
	j=$((j+1))
	awaken
done
