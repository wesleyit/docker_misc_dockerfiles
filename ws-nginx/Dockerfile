## Use the 8.0 version of Debian (stable)
FROM wesleyit/ws-debian-base:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Run a complete upgrade and install apache2
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y nginx-full

## This is where the virtual hosts config files goes
VOLUME /etc/nginx

## And this is where the virtual hosts files goes
VOLUME /srv/www/

## Allow some ports
EXPOSE 80
EXPOSE 443
EXPOSE 8080
EXPOSE 8443

## Exec the daemon 
CMD nginx
