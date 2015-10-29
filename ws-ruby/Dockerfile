## Use the 8.0 version of Debian (stable)
FROM wesleyit/ws-debian-base:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Run a complete upgrade and install apache2
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y ruby ruby2.1 ruby-dev ruby2.1-dev

## This is a place to interchange files with the container
VOLUME /data

## Improve the irx experience
RUN echo require \'irb/completion\' > /root/.irbrc

## Improve the gem management
add .gemrc /root/.gemrc

## Exec the irb if nothing is specified
CMD irb
