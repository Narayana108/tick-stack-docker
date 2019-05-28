# Docker Compose for TICK stack 
# With Nginx proxy and authentication for Chronograf

## Nginx, Telegraf, InfluxDB, Chronograf, Kapacitor

### Start tick stack
```
docker-compose up
```

### Start telegraf
```
docker-compose up -f telegraf.yml
```

### Generate new credentials:

```bash
sudo htpasswd -c conf/htpasswd/chronograf.krsna.co.za admin
```

### Add an additional user
```bash
sudo htpasswd conf/htpasswd/chronograf.krsna.co.za another_user
```

----

Most High Bless ॐ 

हरे कृष्ण हरे कृष्ण कृष्ण कृष्ण हरे हरे हरे राम हरे राम राम राम हरे हरे
