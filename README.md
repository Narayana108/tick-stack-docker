# Docker Compose for TICK stack 
# With Nginx proxy and authentication for Chronograf

## Nginx, Telegraf, InfluxDB, Chronograf, Kapacitor

#Configuration

#### Generate an up-to-date sample telegraf config
```bash
bash scripts/ssh-or-conf_gen.sh telegraf "telegraf config" > /tmp/telegraf.conf
```

#### Generate an up-to-date sample telegraf config
```bash
bash scripts/ssh-or-conf_gen.sh influxdb "influxd config" > /tmp/influxd.conf
```

#### Generate an up-to-date sample kapacitor config
```bash
bash scripts/ssh-or-conf_gen.sh kapacitor "kapacitord config" > /tmp/kapacitord.conf
```

# Quickstart

```bash
git clone https://gitlab.com/qrsna/tick-stack-docker.git && cd tick-stack-docker
cp .env.default .env && vim .env # edit your variables
make
sudo htpasswd -c volumes/config/htpasswd/chronograf.krsna.co.za admin
docker-compose up 
```

## Start telegraf
```bash
docker-compose up -f telegraf.yml
```

### Add an additional htpasswd user
```bash
sudo htpasswd volumes/config/htpasswd/chronograf.krsna.co.za another_user
```

### SSH into default docker container
```bash
bash scripts/ssh-or-conf_gen.sh kapacitor 
bash scripts/ssh-or-conf_gen.sh influxdb
```

----

Most High Bless ॐ 

हरे कृष्ण हरे कृष्ण कृष्ण कृष्ण हरे हरे हरे राम हरे राम राम राम हरे हरे
