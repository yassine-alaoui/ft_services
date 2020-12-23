FROM alpine:latest
RUN apk update && apk upgrade
#install nginx
RUN apk add nginx
#install all php
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-zlib php7-cgi php7-mbstring
RUN apk add php7-pear php7-dev php7-zip php7-mcrypt php7-xml
RUN apk add ssmtp tzdata php7-soap php7-openssl php7-gmp php7-pdo_odbc
RUN apk add php7-json php7-dom php7-pdo php7-mysqli php7-sqlite3 php7-pdo_pgsql
RUN apk add php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader
RUN apk add php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype php7-session
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
RUN ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
##here end
#run nginx
EXPOSE 5000
CMD sh nginx.sh