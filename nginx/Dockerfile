FROM nginx

MAINTAINER Puchnina Anastasia

# Setting up Nginx with configs and static files
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/
COPY static/ /srv/www/backend/static