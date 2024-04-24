FROM composer
# define workdir
WORKDIR /var/www/html
# add user and group
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
# change ownership of workdir
USER laravel
# entrypoint and command to ignore platform requirements
ENTRYPOINT ["composer","--ignore-platform-reqs"]