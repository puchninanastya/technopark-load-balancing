#!/bin/bash

sudo service nginx start &&
sudo service telegraf start && 
gunicorn -c ask_gunicorn_config.py ask_puchnina.wsgi
