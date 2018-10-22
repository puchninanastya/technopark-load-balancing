#!/bin/bash

sudo service influxdb start && 
sudo service telegraf start && 
gunicorn -c ask_gunicorn_config.py ask_puchnina.wsgi
