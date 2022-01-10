FROM ubuntu

MAINTAINER ash

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update; apt dist-upgrade -y

RUN apt install -y apache2 mysql-server php

ENTRYPOINT apachectl -D FOREGROUND
ENTRYPOINT phpctl -D FOREGROUND
