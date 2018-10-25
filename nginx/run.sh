#!/bin/bash

sudo service nginx start &&
sudo service telegraf start
echo Services nginx and telegraf were started.
tail -f /dev/null