if [ -e /etc/apt/sources.list.d/cydia.list ] || [ -e /etc/apt/cydiasources.d/cydia.list ]
then
	if [ -e /etc/apt/sources.list.d/cydia.list ]; then
		path="/etc/apt/sources.list.d/cydia.list"
	else
		path="/etc/apt/cydiasources.d/cydia.list"
	fi
	now=$(date +"%m/%d/%Y %H:%M:%S")
	echo "Cydia source list created time: $now"
	echo ""
	cut -d ' ' -f 2 $path
else
	echo "_NotFound_"
fi