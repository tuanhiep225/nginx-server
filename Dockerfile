FROM nginx:1.12
COPY ./certs-configs/nginx/nginx.conf /etc/nginx/nginx.conf

# SSL certificate for mifi.website
COPY ./certs-configs/mifi.website/chain.pem /etc/nginx/ssl/
COPY ./certs-configs/mifi.website/dhparam.pem /etc/nginx/ssl/
COPY ./certs-configs/mifi.website/fullchain.pem /etc/nginx/ssl/
COPY ./certs-configs/mifi.website/privkey.pem /etc/nginx/ssl/


# SSL certificate for skmei.ph
COPY ./certs-configs/skmei.ph/skmei_ph_chain.pem /etc/nginx/ssl/
COPY ./certs-configs/skmei.ph/skmei_ph_fullchain.pem /etc/nginx/ssl/
COPY ./certs-configs/skmei.ph/skmei_ph_privkey.pem /etc/nginx/ssl/
CMD ["nginx", "-g", "daemon off;"]
