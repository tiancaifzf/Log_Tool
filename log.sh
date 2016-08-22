	#!/bin/bash
	
	packageName=$1
	pid=`adb shell ps | grep $packageName | awk '{print $2}'`
	adb logcat -c 
	adb logcat | grep --color=auto $pid
