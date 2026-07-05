FROM php:8.2-apache

# Install extensions
RUN apt-get update && apt-get install -y \
    libzip-dev zip unzip \
    && docker-php-ext-install pdo pdo_mysql zip

# Enable apache rewrite
RUN a2enmod rewrite

# Copy project
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
