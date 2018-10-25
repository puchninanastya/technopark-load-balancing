#!/bin/bash

sudo service influxdb start && 
sudo service grafana-server start
echo Services influxdb and grafana-server were started.
tail -f /dev/null