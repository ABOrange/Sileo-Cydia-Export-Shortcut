if [ -e /etc/apt/sources.list.d/sileo.sources ]
then
	now=$(date +"%m/%d/%Y %H:%M:%S")
	echo -e "Sileo source list\n$now\n"
	grep "URIs: " /etc/apt/sources.list.d/sileo.sources | sed "s/URIs: //g"
else
	echo "_NotFound_"
fi