FROM alpine:latest
#updates
RUN apk update && apk upgrade
#add grafana
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.3.6.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.6.linux-amd64.tar.gz
RUN rm grafana-7.3.6.linux-amd64.tar.gz
COPY script.sh /
COPY grafana.db /grafana-7.3.6/data/
EXPOSE 3000
CMD ["sh", "script.sh"]