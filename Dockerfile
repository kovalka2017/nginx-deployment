FROM nginx:latest

# Copy only necessary files to the correct locations
COPY ./nginx-deployment/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx-deployment/html /usr/share/nginx/html

EXPOSE 80
