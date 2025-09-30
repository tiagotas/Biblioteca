FROM php:8.4-apache
 
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
 
RUN a2enmod rewrite 

COPY ./App /var/www/html/App/
COPY ./index.php /var/www/html/
COPY ./.htaccess /var/www/html/

EXPOSE 80
