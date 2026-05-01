FROM php:8.4-fpm-alpine

#the folder that application files can be fined in and the RUN command will be executed in this folder
WORKDIR /app 

# using the tool existing in the image we can install the dependencies
RUN docker-php-ext-install pdo pdo_mysql




#the docker file dose not ended with command, the command in the base image will be executed