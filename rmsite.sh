dir='/etc/nginx/sites-available/'
site=$1

if [[ $site = '' ]]
then
	echo "Enter site name"
	read site
fi

filePath=$dir$site

if [ ! -f $filePath ]
then
	echo "The site $site doesn't exists"
	exit 1;
fi

sudo rm $filePath;
echo "Site $site removed"
