FROM php:apache

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite
RUN sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN echo "html_errors = 1" > /usr/local/etc/php/conf.d/html-errors.ini

EXPOSE 80
