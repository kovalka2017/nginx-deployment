FROM nginx:latest

# Копіюємо статичні HTML-файли в Nginx
COPY nginx-deployment/usr/share/nginx/html/index.html /usr/share/nginx/html

# Відкриваємо порт 80 для HTTP-запитів
EXPOSE 80

# Запускаємо Nginx у фоновому режимі

