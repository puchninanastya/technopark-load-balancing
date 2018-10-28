# Load balancing and server monitoring
Technopark Mail.ru | Highload course

## Servers
Using [DigitalOcean](https://www.digitalocean.com) Docker droplets.

- [Monitoring](http://207.154.202.247:3000)
- [Load balancer](http://207.154.198.26)
- [Backend 1](http://188.166.161.195)
- [Backend 2](http://207.154.202.250)
- [Backend 3](http://207.154.198.18)

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