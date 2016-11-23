#!/bin/bash

docker rm -f ws-apache2 2> /dev/null
docker run -ti -d \
	--name ws-apache2 \
	--hostname ws-apache2.docker.local \
	-p 80:80 \
	-v `pwd`/sites-enabled:/etc/apache2/sites-enabled \
	-v `pwd`/www:/srv/www \
	wesleyit/ws-apache2
