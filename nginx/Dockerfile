FROM nginx

MAINTAINER Puchnina Anastasia

# Setting up Debian with tools
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install apt-transport-https

# Setting up Nginx with configs and static files
ADD configs/nginx.conf /etc/nginx/nginx.conf
ADD configs/balancer.conf /etc/nginx/conf.d/
COPY static/ /srv/www/backend/static

# Installing and setting up Telegraf
ENV TELEGRAF_VERSION 1.8.2-1
RUN curl -s -o /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb \
  http://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  dpkg -i /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm -rf /var/lib/apt/lists/*
COPY configs/telegraf.conf /etc/telegraf/telegraf.conf

# Starting Nginx and Telegraf services
CMD ["./run.sh"]