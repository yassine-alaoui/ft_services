shopt -s expand_aliases
source ~/.zshrc
# sed -i '' "s/$(minikube ip)/MINIKUBE_IP/g" srcs/minikube_setup/metallb.yaml
# sed -i '' "s/$(minikube ip)/'MINIKUBE_IP'/g" srcs/mysql/wp_db.sql
minikube delete
minikube start
eval $(minikube docker-env)
# minikube addons enable metallb
docker pull metallb/speaker:v0.9.5
docker pull metallb/controller:v0.9.5
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
# sed -i '' "s/MINIKUBE_IP/$(minikube ip)/g" srcs/minikube_setup/metallb.yaml
# sed -i '' "s/'MINIKUBE_IP'/$(minikube ip)/g" srcs/mysql/wp_db.sql
kubectl create -f srcs/minikube_setup/metallb.yaml
eval $(minikube docker-env)
docker build -t d_mysql srcs/mysql/
docker build -t d_wordpress srcs/wordpress/
docker build -t d_phpmyadmin srcs/phpmyadmin/
docker build -t d_nginx srcs/nginx/
docker build -t d_influxdb srcs/influxdb/
docker build -t d_grafana srcs/grafana/
kubectl create -f srcs/minikube_setup/mysql-deployment.yaml
kubectl create -f srcs/minikube_setup/influxdb-deployment.yaml
kubectl create -f srcs/minikube_setup/nginx-deployment.yaml
kubectl create -f srcs/minikube_setup/wordpress-deployment.yaml
kubectl create -f srcs/minikube_setup/phpmyadmin-deployment.yaml
kubectl create -f srcs/minikube_setup/grafana-deployment.yaml