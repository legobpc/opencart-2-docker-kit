FROM php:5.6-apache

RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list && \
    echo "deb http://archive.debian.org/debian-security stretch/updates main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y --allow-unauthenticated \
    libpng-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    zlib1g-dev \
    unzip \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/include \
    && docker-php-ext-install gd mysqli mcrypt zip

RUN php -i | grep -i mysqli

RUN a2enmod rewrite