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
- Telegraf service.

### Backends servers
- AskPuchnina Django project;
- Telegraf service.

### Monitoring server
- InfluxDB;
- Gragana.
