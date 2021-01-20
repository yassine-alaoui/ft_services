FROM alpine:3.12
#updates
RUN apk update && apk upgrade
#telegraph stuff
ENV TELEGRAF_VERSION 1.6.3
ADD https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz ./
RUN tar -C . -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz && \
        chmod +x telegraf/* && \
        cp telegraf/telegraf /usr/bin/ && \
        rm -rf *.tar.gz* telegraf/
#install influxdb
RUN apk add influxdb
# telelgraf stuff
RUN mkdir -p /etc/telegraf
COPY telegraf.conf /etc/telegraf
#needed files
COPY setup.sh /
COPY influxdb.conf /etc/
COPY health.sh /
EXPOSE 8086
CMD ["sh", "setup.sh"]