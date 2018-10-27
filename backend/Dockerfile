FROM python:3.6

MAINTAINER Puchnina Anastasia

# Setting up backend django project
RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend
COPY /src/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Exposing Gunicorn 8081
EXPOSE 80

# Setting up Debian with tools
RUN apt-get update && \
    apt-get install sudo && \
    apt-get install -y curl && \
    apt-get install apt-transport-https

# Installing and setting up Nginx
RUN sudo apt-get update && sudo apt-get -y install nginx
RUN rm /etc/nginx/sites-enabled/default
COPY configs/backend.conf /etc/nginx/conf.d/backend.conf
COPY src/static/ /srv/www/backend/static

# Installing and setting up Telegraf
ENV TELEGRAF_VERSION 1.8.2-1
RUN curl -s -o /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb \
  http://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  dpkg -i /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm -rf /var/lib/apt/lists/*
COPY configs/telegraf.conf /etc/telegraf/telegraf.conf

# Starting Telegraf service and backend Gunicorn
CMD ["./run.sh"]