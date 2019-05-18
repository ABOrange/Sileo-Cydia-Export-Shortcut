if [ -e /etc/apt/sources.list.d/sileo.sources ]
then
	now=$(date +"%m/%d/%Y %H:%M:%S")
	echo "Sileo source list created time: $now"
	echo ""
	grep "URIs: " /etc/apt/sources.list.d/sileo.sources | sed "s/URIs: //g"
else
	echo "_NotFound_"
fi