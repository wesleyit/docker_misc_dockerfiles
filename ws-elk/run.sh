#!/bin/bash
cd `dirname $0`

## ELK Stack
docker run --name cs-elk -p 8080:80 \
	-v `pwd`/config:/etc/logstash \
	-v `pwd`/data:/data \
  cs-elk
