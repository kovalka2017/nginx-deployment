FROM nginx:latest
COPY ./nginx-deployment/ /
EXPOSE 80
CMD ["sh", "-c", "nginx -g 'daemon off;' & /bin/sh"]
