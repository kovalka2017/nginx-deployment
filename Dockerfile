FROM gcr.io/dynamic-circle-431306-h3/custom-nginx-deployment-image:latest

# Копіюємо статичні HTML-файли в Nginx
COPY nginx-deployment/usr/share/nginx/html/indexx.html /usr/share/nginx/html

# Відкриваємо порт 80 для HTTP-запитів
EXPOSE 80

# Запускаємо Nginx у фоновому режимі
CMD ["sh", "-c", "nginx -g 'daemon off;' & /bin/sh"]
