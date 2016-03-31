## Use a Debian with some nice stuff preinstalled
FROM wesleyit/ws-debian-base:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Run a complete upgrade
RUN apt-get update -y
RUN apt-get dist-upgrade -y

## Install OpenSSH
RUN apt-get install openssh-server -y
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

## Adds the authorized key
RUN mkdir /root/.ssh
ADD authorized_keys /root/.ssh/

## Allow connections to SSH
EXPOSE 22

## Start SSHD
CMD bash -c "service ssh start && journalctl -f"
