#!/bin/bash
set -a
source .env

echo "Pulling latest images from Docker registry"
docker pull telegraf:${TELEGRAF_VERSION}
docker pull influxdb:${INFLUXDB_VERSION}
docker pull chronograf:${CHRONOGRAF_VERSION}
docker pull kapacitor:${KAPACITOR_VERSION}
docker pull jwilder/nginx-proxy:${JWILDER_VERSION}

#cat docker-compose.yml | grep image: | cut -d':' -f2-3 | while read line; do echo $line; docker pull $line; done
