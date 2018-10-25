#!/bin/bash

sudo service nginx start &&
sudo service telegraf start && 
gunicorn -c src/ask_gunicorn_config.py src/ask_puchnina.wsgi
