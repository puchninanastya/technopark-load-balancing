#!/bin/bash

sudo service nginx start
sudo service telegraf start
cd src
gunicorn -c ask_gunicorn_config.py ask_puchnina.wsgi
