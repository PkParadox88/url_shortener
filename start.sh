#!/bin/bash

# Start Django in the background
#python manage.py runserver 0.0.0.0:8000 &
uvicorn share_khiladi.asgi:application --host 0.0.0.0 --port 8000 &


