# Використовуємо базовий образ Nginx
FROM nginx:latest

# Копіюємо ваші локальні конфігураційні файли до контейнера
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

# Додайте власні HTML-файли або інші ресурси
COPY ./html /usr/share/nginx/html

# Експонуємо необхідні порти
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"]
