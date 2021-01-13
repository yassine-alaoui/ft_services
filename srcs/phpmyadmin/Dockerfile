FROM alpine:latest
RUN apk update && apk upgrade
#install nginx
RUN apk add nginx
#install all php
RUN apk add php7 php7-fpm php7-opcache && apk add php7-json php7-mysqli && apk add php7-session \
	&& apk add php7-openssl && apk add php7-mbstring
#copy the default
COPY default.conf ./etc/nginx/conf.d/default.conf
#copy the nginx.sh
COPY nginx.sh ./nginx.sh
##here start
RUN mkdir -p /usr/share/webapps/
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages phpmyadmin
COPY config.inc.php /phpmyadmin/
COPY health.sh /
RUN ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
##here end
#run nginx
EXPOSE 5000
CMD sh nginx.sh