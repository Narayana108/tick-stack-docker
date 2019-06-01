set -a
source .env

mkdir -p ./volumes/config/htpasswd
>&2 echo "Building \"telegraf.conf\" via envsubst"
envsubst < templates/telegraf.conf > "volumes/config/telegraf.conf"
>&2 echo "Building \"kapacitor.conf\" via envsubst"
envsubst < templates/kapacitor.conf > "volumes/config/kapacitor.conf"

>&2 echo "Adding authentication for \"chronograf\" via httpasswd"
read -p "Enter username: " -r
sudo htpasswd -c volumes/config/htpasswd/chronograf.krsna.co.za $REPLY

#ENV_VARS=""
#if [[ -v INFLUXDB_DB ]]; then ENV_VARS="${ENV_VARS} -e INFLUXDB_DB=${INFLUXDB_DB}"; fi
#if [[ -v INFLUXDB_ADMIN_USER ]]; then ENV_VARS="${ENV_VARS} -e INFLUXDB_ADMIN_USER=${INFLUXDB_ADMIN_USER}"; fi
#if [[ -v INFLUXDB_ADMIN_PASSWORD ]]; then ENV_VARS="${ENV_VARS} -e INFLUXDB_ADMIN_PASSWORD=${INFLUXDB_ADMIN_PASSWORD}"; fi

#>&2 echo "Initializing InfluxDB database"
#docker run --rm $ENV_VARS \
  #-v $PWD/volumes/influxdb:/var/lib/influxdb:rw \
  #influxdb:${INFLUXDB_VERSION} /init-influxdb.sh
