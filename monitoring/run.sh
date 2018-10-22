#!/bin/bash

sudo service influxdb start && 
sudo service grafana-server start
echo Services were started.
tail -f /dev/null