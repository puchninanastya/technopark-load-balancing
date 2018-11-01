# Load balancing and server monitoring
Technopark Mail.ru | Highload course

## Servers
Using [DigitalOcean](https://www.digitalocean.com) Docker droplets.

- Monitoring
- Load balancer
- Backend 1
- Backend 2
- Backend 3

## Description
### Nginx server 
- Load balancing based on Round Robin algorithm;
- Upstream settings;
- Proxy to one of three backends;
- [Telegraf](https://docs.influxdata.com/telegraf/v1.8/) service.

### Backends servers
- AskPuchnina Django project;
- [Telegraf](https://docs.influxdata.com/telegraf/v1.8/) service.

### Monitoring server
- [InfluxDB](https://docs.influxdata.com/influxdb/v1.6/) service;
- [Grafana](https://grafana.com) service.
