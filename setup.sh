minikube delete
minikube start
eval $(minikube docker-env)
docker pull metallb/speaker:v0.9.5
docker pull metallb/controller:v0.9.5
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
# kubectl create -f srcs/minikube_setup/metallb.yaml
docker build -t d_mysql srcs/mysql/
docker build -t d_wordpress srcs/wordpress/
docker build -t d_phpmyadmin srcs/phpmyadmin/
docker build -t d_nginx srcs/nginx/
docker build -t d_influxdb srcs/influxdb/
docker build -t d_grafana srcs/grafana/
docker build -t d_ftps srcs/ftps/
kubectl apply -f srcs/minikube_setup/