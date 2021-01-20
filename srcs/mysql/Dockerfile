FROM alpine:3.12
RUN apk update && apk upgrade
#install mariadb
RUN apk add --no-cache mariadb mariadb-client mariadb-common
#install open rc
RUN apk add openrc
#needed files
COPY setup.sh /
COPY wp_db.sql /
COPY mariadb-server.cnf /etc/my.cnf.d
COPY health.sh /
#the final commands
CMD sh setup.sh