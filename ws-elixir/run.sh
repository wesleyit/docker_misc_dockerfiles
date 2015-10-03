#!/bin/bash

docker rm -f ws-elixir 2> /dev/null
docker run -ti \
	--name ws-elixir \
	-v /tmp/ws-elixir-data:/data \
	wesleyit/ws-elixir:1.1.0
