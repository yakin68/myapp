FROM php:7.1-apache
    
# Install PHP extensions
RUN curl -sSL https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o - | sh -s \
      docker-php-ext-install pdo pdo_mysql \
      gd xdebug mbstring
  
COPY QuickDbTest.php /var/www/html/

CMD ["php", "/var/www/html/QuickDbTest.php"]
