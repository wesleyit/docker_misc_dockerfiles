## Use the 8.0 version of Debian (stable)
FROM wesleyit/ws-debian-base:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Run a complete upgrade and install apache2
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y awscli git vim-nox

## Exec the daemon 
CMD /bin/bash
