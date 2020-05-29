#!/bin/bash

# Destination of env file inside container
ENV_FILE="/var/www/html/.env"

# Source the .bashrc file so that the exported variables are available.
. ~/.bashrc

# ACL for permissions
setfacl -R -m u:nginx:rwx /var/www
setfacl -R -m u:www-data:rwx /var/www
setfacl -R -m g:nginx:rwx /var/www
setfacl -R -m g:www-data:rwx /var/www

# StartUp Nginx and PHP-FPM
set -e
service nginx restart
php-fpm
while true; do sleep 1d; done

