#!/bin/bash

#!/bin/bash
now=$(date +"%m/%d/%Y %H:%M:%S")
echo "Package list created time: $now"
echo ""
unsortedList=`
var=0
cat /Library/dpkg/status | while read line
do
	if [ -z "$line" ] 
	then
		var=1
	else
		if [[ $line == *"Name: "* ]] && [ $var == 0 ]
		then
			name="$line"
		elif [[ $line == *"Version: "* ]] && [ $var == 0 ]
		then
			ver="$line"
		fi
	fi
	
	if [ $var == 1 ] && [ ! -z "$name" ] && [ ! -z "$ver" ]
		then
			
			echo $name ${ver} | sed "s/Version: //" | sed "s/Name: //"
			unset name
			unset ver
			var=0
		fi
	var=0
done`
echo "$unsortedList" | sort --ignore-case