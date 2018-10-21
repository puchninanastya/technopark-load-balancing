# Load balancing and server monitoring
Technopark Mail.ru | Highload course

## Servers
Using [DigitalOcean](https://www.digitalocean.com) Docker droplets.

- [Main server with Nginx](http://104.248.255.153)
- [Backend 1](104.248.140.174:8081)
- [Backend 2](68.183.64.224:8081)
- [Backend 3](104.248.243.90:8081)

## Description
### Nginx
- Load balancing based on Round Robin algorithm.
- Proxy to one of three backends.
- Backend static files.

### Backend
AskPuchnina Django project.