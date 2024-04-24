FROM php:8.2-fpm-alpine
# define workdir
WORKDIR /var/www/html
# install php extensions and pdo,pdo_mysql
RUN docker-php-ext-install pdo pdo_mysql
# add user and group
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
# change ownership of workdir
USER laravel