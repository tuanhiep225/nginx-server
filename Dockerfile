FROM nginx:1.12
COPY ./certs-configs/nginx/nginx.conf /etc/nginx/nginx.conf

# SSL certificate for mifi.website
COPY ./certs-configs/mifi.website/server.key /etc/nginx/ssl/
COPY ./certs-configs/mifi.website/mifi_website.pem /etc/nginx/ssl/
CMD ["nginx", "-g", "daemon off;"]
