#!/bin/bash
# the working directory is /var/www/html/mysite1/
python manage.py collectstatic
python manage.py makemigrations
python manage.py migrate
uwsgi --ini uwsgi.ini
#uwsgi --chdir=/var/www/html/mysite1 \
#      --module=app_django.wsgi:application \
#      --http=0.0.0.0:8000