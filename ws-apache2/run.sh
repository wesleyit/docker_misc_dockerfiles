#!/bin/bash

docker rm -f ws-apache2 2> /dev/null
docker run -ti -d \
	--name ws-apache2 \
	--hostname ws-apache2.docker.local \
	-p 80:80 -p 8080:8080 \
	-p 443:443 -p 8443:8443 \
	-v `pwd`/sites-enabled:/etc/apache2/sites-enabled \
	-v `pwd`/www:/srv/www \
	ws-apache2
