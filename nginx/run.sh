#!/bin/bash

sudo service nginx start && \
sudo service telegraf start && \
tail -f /dev/null