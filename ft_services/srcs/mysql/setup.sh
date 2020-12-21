#cmds for openrc
mysql_install_db --user=mysql --datadir=/var/lib/mysql
mkdir -p /run/openrc
touch /run/openrc/softlevel
openrc reboot
#start the servecices
rc-update add mariadb default
# /etc/init.d/mariadb setup
rc-service mariadb start
#create user & data base
chown -R mysql: /var/lib/mysql
mysql -u root -e "CREATE DATABASE wp_db;"
mysql -u root < wp_db.sql
# mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'yassine'@'localhost' IDENTIFIED BY 'yassine';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'yassine'@'%' IDENTIFIED BY 'yassine';"
mysql -u root -e "FLUSH PRIVILEGES;";
rc-service mariadb restart
# telegraf start
top