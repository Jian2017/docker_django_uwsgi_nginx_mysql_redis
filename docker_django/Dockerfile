FROM python:3.6-alpine
ENV INSTALL_PATH /var/www/html/mysite1
COPY . /var/www/html/mysite1
WORKDIR /var/www/html/mysite1
RUN apk add python3-dev build-base linux-headers pcre-dev
RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev
RUN pip install -r requirements.txt
RUN sed -i 's/\r//' ./start.sh 
RUN chmod +x ./start.sh
CMD ["sh","./start.sh"]