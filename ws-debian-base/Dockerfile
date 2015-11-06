## Use the 8.0 version of Debian (stable)
FROM debian:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Include non-free software
RUN grep "main contrib non-free" /etc/apt/sources.list || \
		sed -i "s/main/main contrib non-free/" /etc/apt/sources.list

## Run a complete upgrade
RUN apt-get update -y
RUN apt-get dist-upgrade -y

## Install some basic software and clean some caches
RUN apt-get install curl wget vim-nox nmap psmisc \
		bash-completion less git software-properties-common -y
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

## We always need to get and set some information :)
VOLUME /data
