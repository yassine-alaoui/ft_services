FROM alpine:latest
RUN apk update && apk upgrade
#install nginx
RUN apk add nginx
#install all php
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl php7-cgi php7-mbstring
RUN apk add php7-pear php7-dev php7-zip php7-mcrypt php7-xml
RUN apk add ssmtp tzdata php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc
RUN apk add php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-pdo_pgsql
RUN apk add php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader
RUN apk add php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype php7-session
#copy the default
COPY default.conf ./etc/nginx/conf.d/default.conf
#copy the nginx.sh
COPY nginx.sh ./nginx.sh
#copy the wp-config
ADD wp-config.php ./wordpress/wp-config.php
#add wordpress
RUN wget https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz
#run nginx
EXPOSE 5050
CMD sh nginx.sh