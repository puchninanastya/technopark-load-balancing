FROM python:3.6

# Setting up backend django project
RUN mkdir -p /usr/src/backend
WORKDIR /usr/src/backend
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Exposing Gunicorn 8081 and InfluxDB 8086 ports
EXPOSE 8081 8086

# Setting up Debian with tools
RUN apt-get update && \
    apt-get install sudo && \
    apt-get install -y curl && \
    apt-get install apt-transport-https

# Installing and setting up InfluxDB
ENV INFLUXDB_VERSION 1.6.4
RUN curl -s -o /tmp/influxdb_${INFLUXDB_VERSION}_amd64.deb http://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  dpkg -i /tmp/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  rm /tmp/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
  rm -rf /var/lib/apt/lists/*

# Installing and setting up Telegraf
ENV TELEGRAF_VERSION 1.8.2-1
RUN curl -s -o /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb http://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  dpkg -i /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm /tmp/telegraf_${TELEGRAF_VERSION}_amd64.deb && \
  rm -rf /var/lib/apt/lists/*
RUN cd /etc/telegraf/
RUN telegraf -sample-config -input-filter cpu:mem -output-filter influxdb > telegraf.conf

# Starting InfluxDB and Telegraf services and backend Gunicorn
CMD ["./run.sh"]