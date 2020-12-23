#cmds for influxdb
mkdir -p /var/run/
touch  /var/run/utmp
nohup influxd run &
influx -execute "create database telegraf"
influx -execute "CREATE USER yassine WITH PASSWORD 'yassine' WITH ALL PRIVILEGES"
telegraf