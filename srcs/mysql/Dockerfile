FROM alpine:latest
RUN apk update && apk upgrade
#install mariadb
RUN apk add --no-cache mariadb mariadb-client mariadb-common
#install open rc
RUN apk add openrc
#needed files
COPY setup.sh /
COPY wp_db.sql /
COPY mariadb-server.cnf /etc/my.cnf.d
#the final commands
VOLUME ["/var/lib/mysql"]
EXPOSE 3306
CMD sh setup.sh
# EXPOSE 5050