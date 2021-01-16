FROM alpine:3.10
RUN apk update && apk upgrade
#install nginx
RUN apk add nginx
#install open-ssl and open-ssh
RUN apk add openssl openssh
#copy the default
COPY default.conf ./etc/nginx/conf.d/default.conf
#copy the cert.key
COPY cert.key ./etc/nginx/./cert.key
#copy the cert.pem
COPY cert.pem ./etc/nginx/./cert.pem
#copy the nginx.sh
COPY nginx.sh ./nginx.sh
COPY health.sh /
#simple test
RUN echo "<h1 style='color : red;padding-left : 45vw'>Hello world!</h1>" > /var/www/localhost/htdocs/index.html;
#run nginx
CMD sh nginx.sh
EXPOSE 80 443 22