FROM php:8.4-fpm-alpine

#the folder that application files can be fined in and the RUN command will be executed in this folder
WORKDIR /app 

# using the tool existing in the image we can install the dependencies
RUN docker-php-ext-install pdo pdo_mysql



# installing composer in this image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# coping the entrypoint
COPY dockerfiles/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


