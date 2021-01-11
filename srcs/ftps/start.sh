adduser -D ftpuser
echo "ftpuser:password" | chpasswd
usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf