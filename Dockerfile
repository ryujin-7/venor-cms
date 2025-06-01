FROM php:8.2-apache

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy your app into the container
COPY . /var/www/html/

# Set permissions (optional, but good practice)
RUN chown -R www-data:www-data /var/www/html
