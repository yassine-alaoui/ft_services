FROM alpine:latest
#updates
RUN apk update && apk upgrade
#add rc
RUN apk add openrc && openrc reboot
#add ftp
RUN apk add vsftpd
	rc-update add vsftpd default
	rc-service vsftpd restart