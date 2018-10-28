#!/bin/bash

sudo service influxdb start
sudo service grafana-server start
tail -f /dev/null