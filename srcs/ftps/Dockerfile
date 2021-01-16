FROM alpine:3.10
#updates
RUN apk update && apk upgrade
#add rc
RUN apk add openssl
#add ftp
RUN apk add vsftpd
#copy stuff
COPY ftps.conf /etc/vsftpd/vsftpd.conf
COPY cert.pem /vsftpd.pem
COPY cert.key /vsftpd.key
COPY start.sh /
#Run
CMD ["sh", "start.sh"]