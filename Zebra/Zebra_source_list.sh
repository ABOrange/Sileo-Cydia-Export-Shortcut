if [ -e /var/mobile/Documents/xyz.willy.Zebra/sources.list ]
then
	now=$(date +"%m/%d/%Y %H:%M:%S")
	echo -e "Zebra source list\n$now\n"
	grep "deb" /var/mobile/Documents/xyz.willy.Zebra/sources.list | cut -d ' ' -f 2
else
	echo "_NotFound_"
fi