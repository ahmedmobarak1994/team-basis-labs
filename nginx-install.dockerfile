FROM php:7.4-fpm-alpine

RUN apk update && apk add --no-cache nginx

WORKDIR /var/www/html

COPY index.php .
COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
