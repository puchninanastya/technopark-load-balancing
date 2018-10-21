#!/bin/bash

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn -c ask_gunicorn_config.py ask_puchnina.wsgi 
# --daemon
