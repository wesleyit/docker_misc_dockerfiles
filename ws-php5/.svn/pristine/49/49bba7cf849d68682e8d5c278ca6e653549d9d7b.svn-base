## Use the 8.0 version of Debian (stable)
FROM wesleyit/ws-debian-base:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Run a complete upgrade and install apache2
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y apache2

## Enable SSL and Proxy 
RUN a2enmod 'ssl*' 'proxy*'

## This is where the virtual hosts config files goes
ADD sites-enabled /etc/apache2/sites-enabled
VOLUME /etc/apache2

## And this is where the virtual hosts files goes
ADD www /srv/www
VOLUME /srv/www/

## Allow some ports
EXPOSE 80
EXPOSE 443
EXPOSE 8080
EXPOSE 8443

## Exec the daemon 
CMD apache2ctl -DFOREGROUND
