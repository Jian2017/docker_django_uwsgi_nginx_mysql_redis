FROM nginx:latest

#RUN mkdir -p /dockerhost

RUN rm /etc/nginx/conf.d/default.conf \
&& mkdir -p /usr/share/nginx/html/static \
&& mkdir -p /usr/share/nginx/html/media \
&& mkdir -p /usr/share/nginx/ssl 
#RUN chown -R www-data:www-data  /usr/share/nginx/html/media \
#&& chmod -R 775 /usr/share/nginx/html/media

ADD ./uwsgi_params /
ADD ./nginx.conf /etc/nginx/conf.d/
#RUN ln -s /etc/nginx/conf.d/nginx.conf /etc/nginx/sites-enabled
CMD ["nginx", "-g", "daemon off;"]

#CMD ["/etc/init.d/nginx","start"]