FROM alpine:3.12
RUN apk update && apk upgrade
#install nginx
RUN apk add nginx
#install all php
RUN apk add php7 php7-fpm php7-opcache && apk add php7-json php7-mysqli && apk add php7-session \
	&& apk add php7-openssl && apk add php7-mbstring
#add wordpress
RUN wget https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz
#run nginx
#copy the default
COPY default.conf /etc/nginx/conf.d/default.conf
#copy the nginx.sh
COPY nginx.sh /nginx.sh
COPY health.sh /
#copy the wp-config
ADD wp-config.php /wordpress/wp-config.php
CMD sh nginx.sh
EXPOSE 5050