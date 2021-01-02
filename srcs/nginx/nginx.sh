ssh-keygen -A
mkdir -p /run/nginx
echo "root:root"| chpasswd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
/usr/sbin/sshd
nginx -g 'daemon off;';