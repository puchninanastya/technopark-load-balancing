FROM nginx

MAINTAINER Puchnina Anastasia

# Setting up Debian with tools
RUN apt-get update && \
    apt-get install sudo && \
    apt-get install -y curl && \
    apt-get install -y apt-transport-https

RUN sudo apt-get update && \
    sudo apt-get install -y procps

# Installing and setting up Telegraf
ENV TELEGRAF_VERSION 1.8.2-1
RUN curl -s -o /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb \
  http://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  dpkg -i /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm -rf /var/lib/apt/lists/*
COPY configs/telegraf.conf /etc/telegraf/telegraf.conf

# Setting up Nginx with configs and static files
COPY configs/nginx.conf /etc/nginx/nginx.conf
COPY configs/balancer.conf /etc/nginx/conf.d/

# Setting up project folder
RUN mkdir -p /usr/src/balancer
WORKDIR /usr/src/balancer
COPY . .

# Starting Nginx and Telegraf services
RUN sudo chmod +x ./run.sh
CMD ["./run.sh"]