FROM nginx

# Копируем файлы конфигурации в контейнер
ADD nginx.conf /etc/nginx/nginx.conf
#ADD backend.conf /etc/nginx/sites-enabled/backend.conf
ADD default.conf /etc/nginx/conf.d/
COPY static/ /srv/www/backend/static