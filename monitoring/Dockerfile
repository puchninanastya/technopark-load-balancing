FROM debian:stretch

MAINTAINER Puchnina Anastasia

# Setting up project folder
RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend
COPY . .

# Setting up Debian with tools
RUN apt-get update && \
    apt-get install sudo && \
    apt-get install -y curl

# Exposing InfluxDB 8083, 8086 and Grafana 3000 ports
EXPOSE 8083 8086 3000

# Installing and setting up InfluxDB
ENV INFLUXDB_VERSION 1.6.4
RUN curl -s -o /tmp/influxdb_${INFLUXDB_VERSION}_amd64.deb http://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  dpkg -i /tmp/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  rm /tmp/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  rm -rf /var/lib/apt/lists/*

# ALSO NEED TO DO (MANUAL SETTING UP):
# curl -i -XPOST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE telegraf"
# CREATE USER <username> WITH PASSWORD '<password>' WITH ALL PRIVILEGES

# Installing and setting up Grafana
ENV GRAFANA_VERSION 5.3.1
RUN apt-get update && sudo apt-get install -y adduser libfontconfig
RUN curl -s -o /tmp/grafana_${GRAFANA_VERSION}_amd64.deb s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_${GRAFANA_VERSION}_amd64.deb && \
  dpkg -i /tmp/grafana_${GRAFANA_VERSION}_amd64.deb && \
  rm /tmp/grafana_${GRAFANA_VERSION}_amd64.deb && \
  rm -rf /var/lib/apt/lists/*


RUN sudo chmod +x ./run.sh
# Starting InfluxDB and Grafana services
CMD ["./run.sh"]
