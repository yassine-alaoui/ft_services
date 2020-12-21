shopt -s expand_aliases
source ~/.zshrc
# sed -i '' "s/$(minikube ip)/MINIKUBE_IP/g" ./minikube_setup/metallb.yaml
# sed -i '' "s/$(minikube ip)/'MINIKUBE_IP'/g" ./mysql/wp_db.sql
minikube delete
minikube start
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
# sed -i '' "s/MINIKUBE_IP/$(minikube ip)/g" ./minikube_setup/metallb.yaml
# sed -i '' "s/'MINIKUBE_IP'/$(minikube ip)/g" ./mysql/wp_db.sql
kubectl create -f minikube_setup/metallb.yaml
# eval $(minikube docker-env)
eval $(minikube -p minikube docker-env)
docker build -t d_mysql ./mysql/
docker build -t d_wordpress ./wordpress/
docker build -t d_phpmyadmin ./phpmyadmin/
docker build -t d_nginx ./nginx/
docker build -t d_influxdb ./influxdb/
kubectl create -f minikube_setup/mysql-deployment.yaml
kubectl create -f minikube_setup/influxdb-deployment.yaml
kubectl create -f minikube_setup/nginx-deployment.yaml
kubectl create -f minikube_setup/wordpress-deployment.yaml
kubectl create -f minikube_setup/phpmyadmin-deployment.yaml