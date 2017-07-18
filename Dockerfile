FROM php:7.1.7-fpm

RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install tokenizer

#breaks cache
RUN apt-get update \
	&& apt-get install -y \
		openssl \
        libmcrypt-dev \
        libxml2-dev
RUN docker-php-ext-install mcrypt
RUN docker-php-ext-install xml
