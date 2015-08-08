FROM ubuntu:14.04
MAINTAINER Mai Zhibin "my2014@gmail.com"
ENV REFRESHED_AT 2015-08-08

RUN apt-get update
RUN apt-get -y -q install nginx

RUN mkdir -p /var/www/html/website
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/

EXPOSE 80
