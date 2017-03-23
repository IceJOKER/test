dir='/etc/nginx/sites-available/'
site=$1

if [[ $site = '' ]]
then
	echo "Enter site name"
	read site
fi

filePath=$dir$site

if [ -f $filePath ]
then
	echo "The site $site already exists"
	exit 1;
fi

sudo cp ./nginx_default $filePath
sudo sed -i -e "s/default_site/$site/g" $filePath
