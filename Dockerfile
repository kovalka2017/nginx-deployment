FROM nginx:latest

# Копіюємо статичні HTML-файли в Nginx
COPY /nginx-deployment/usr/share/nginx/html/index.html /usr/share/nginx/html

COPY nginx-deployment.yaml /nginx-deployment.yaml

# Відкриваємо порт 80 для HTTP-запитів
EXPOSE 80

# Запускаємо Nginx у фоновому режимі
CMD ["sh", "-c", "nginx -g 'daemon off;' & /bin/sh"]
