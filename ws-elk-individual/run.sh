#!/bin/bash

docker run -d --name elasticsearch \
	-p 9200:9200 \
	-v /tmp/elasticsearch:/usr/share/elasticsearch/data \
	elasticsearch

docker run -d --name logstash \
	-p 25826:25826 \
	-p 25826:25826/udp \
	-v $PWD/conf:/conf \
	--link elasticsearch:db \
	logstash \
	logstash -f /conf/syslog.conf

docker run -d --name kibana \
	--link elasticsearch:elasticsearch \
	-p 5601:5601 \
	kibana
