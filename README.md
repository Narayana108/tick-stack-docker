# Docker Compose for TICK stack 
# With Nginx proxy and authentication for Chronograf

## Nginx, Telegraf, InfluxDB, Chronograf, Kapacitor

### Start tick stack
```
docker-compose up
```

### Start telegraf in docker
```
docker-compose up -f telegraf.yml
```

### Chonograf default credentials:
```
user: admin
password: password
```

### Generate new credentials:

```bash
sudo htpasswd -c conf/htpasswd/chronograf.krsna.co.za admin
```

### Add an additional user
```bash
sudo htpasswd conf/htpasswd/chronograf.krsna.co.za another_user
```
