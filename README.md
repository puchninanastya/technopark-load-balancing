# Load balancing and server monitoring
Technopark Mail.ru | Highload course

## Servers
Using [DigitalOcean](https://www.digitalocean.com) Docker droplets.

- [Main server with Nginx](http://104.248.255.153)
- [Backend 1](http://104.248.140.174:8081)
- [Backend 2](http://68.183.64.224:8081)
- [Backend 3](http://104.248.243.90:8081)

## Description
### Nginx
- Load balancing based on Round Robin algorithm.
- Proxy to one of three backends.
- Backend static files.

### Backend
AskPuchnina Django project.

### TODO list:
- [ ] Установить и настроить Телеграф агент на nginx балансировщик
- [ ] Сделать графики для балансировщика в Grafana
- [ ] Проверить RPS графики под нагрузкой
- [ ] Пофиксить RPS графики при выключении и включении бекендов
- [ ] Перенести статику на nginx бекендов с балансировщика
- [ ] Поправить Dockerfile и скрипты для автоматической конфигурации мониторинга