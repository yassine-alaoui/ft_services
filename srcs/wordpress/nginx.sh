openrc
mkdir -p /run/openrc
touch /run/openrc/softlevel
rc-update add php-fpm7 default
rc-service php-fpm7 start
mkdir -p /run/nginx
nginx -g "daemon off;"