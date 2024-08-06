FROM nginx:latest
# Copy custom configuration or content if needed
COPY ./nginx-deployment/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx-deployment/html /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
