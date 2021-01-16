minikube delete
minikube start
eval $(minikube docker-env)
minikube addons enable metallb
docker build -t d_mysql srcs/mysql/
docker build -t d_wordpress srcs/wordpress/
docker build -t d_phpmyadmin srcs/phpmyadmin/
docker build -t d_nginx srcs/nginx/
docker build -t d_influxdb srcs/influxdb/
docker build -t d_grafana srcs/grafana/
docker build -t d_ftps srcs/ftps/
kubectl apply -f srcs/minikube_setup/