uwsgi --chdir=/var/www/html/mysite1 \
      --module=app_django.wsgi:application \
      --socket=0.0.0.0:8000

docker build -t django .
docker run -it -d -p 80:8000 django


docker run  -p 80:8000 -v C:\Users\wangj\git\docker_django_uwsgi_nginx_mysql_redis\docker_django:/var/www/html/mysite1 -it --entrypoint=/bin/sh  django


uwsgi --socket :8002 --chmod-socket=666 --wsgi-file ./developing_uwsgi/test.py 

docker run --name some-nginx -d -p 8080:80 --link somedjango:somedjango nginxonly

docker run -p 80:80 -v C:\Users\wangj\git\docker_django_uwsgi_nginx_mysql_redis\docker_others\nginx:/dockerhost --entrypoint=/bin/sh nginxonly

## 
docker run -it -p 80:80 --name mysite3-nginx -v C:\Users\wangj\git\docker_django_uwsgi_nginx_mysql_redis\docker_django\static:/usr/share/nginx/html/static -v C:\Users\wangj\git\docker_django_uwsgi_nginx_mysql_redis\docker_django\media:/usr/share/nginx/html/media --link optimistic_solomon:somedjango -d nginxonly