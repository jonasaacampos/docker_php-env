# Dockerfile
FROM php:8.1-fpm
RUN apt update && apt upgrade -y

# Install system dependencies and PHP extensions
RUN apt install -y git libonig-dev libxml2-dev libzip-dev unzip \
    && docker-php-ext-install pdo_mysql zip dom mbstring xml xmlwriter

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /var/www